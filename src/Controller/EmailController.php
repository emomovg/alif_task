<?php
include_once __DIR__."/../Model/Email.php";
include_once __DIR__."/../Service/ExceptionService.php";

class EmailController
{
    public function create() {
        include_once __DIR__."/../../view/Emails/form.php";
    }

    public function search() {
        $model = $_GET['model'];
        $contactId = $_GET['contactId'];
        if (empty($_POST['search'])) {
            header("location: /?model=$model&action=read&contactId=$contactId");
            die();
        }
        else {
            $page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;
            $email = new Email();
            $all = ($email->search($_POST['search'],$page,$contactId))[0];
            $total_pages = ($email->search($_POST['search'],$page,$contactId))[1];
            include_once __DIR__."/../../view/Emails/list.php";
        }
    }

    public function update(){
        $id = (int)$_GET['id'];
        if (empty($id)) die ('Undefined ID');
        $email = (new Email())->getById($id);
        include_once __DIR__."/../../view/Emails/form.php";
    }

    public function read() {
        $page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;
        $email = new Email();
        $all = ($email->all($_GET['contactId'],$page))[0];
        $total_pages = ($email->all($_GET['contactId'],$page))[1];
        include_once __DIR__."/../../view/Emails/list.php";
    }

    public function delete() {
        $id = (int)$_GET['id'];
        if(empty($id)) die ('Undefined ID');
        (new Email())->deleteById($id);
        $this->redirectToRead();
    }

    public function save() {
        if (!empty($_POST)) {
            try {
                $email = new Email($_POST['id'],htmlspecialchars($_GET['contactId']),htmlspecialchars($_POST['email']));
                if (!empty($email->getByEmail($_POST['email']))) {
                    throw new Exception("Такой email уже существует", 405);
                }
                $email->save();
                $this->redirectToRead();
            } catch (Exception $e) {
                ExceptionService::error($e);
            }
        }
    }

    public function redirectToRead() {
        header("location: /?model=email&action=read&contactId=".$_GET['contactId']."");
    }
}