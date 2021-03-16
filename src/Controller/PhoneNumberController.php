<?php
include_once __DIR__."/../Model/PhoneNumber.php";
include_once __DIR__."/../Service/ExceptionService.php";

class PhoneNumberController
{
    public function create() {
        include_once __DIR__."/../../view/PhoneNumber/form.php";
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
            $phone = new PhoneNumber();
            $all = ($phone->search($_POST['search'],$page,$contactId))[0];
            $total_pages = ($phone->search($_POST['search'],$page,$contactId))[1];
            include_once __DIR__."/../../view/PhoneNumber/list.php";
        }
    }

    public function update(){
        $id = (int)$_GET['id'];
        if (empty($id)) die ('Undefined ID');
        $number = (new PhoneNumber())->getById($id);
        include_once __DIR__."/../../view/PhoneNumber/form.php";
    }

    public function read() {
        $page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;
        $phone = new PhoneNumber();
        $all = ($phone->all($_GET['contactId'],$page))[0];
        $total_pages = ($phone->all($_GET['contactId'],$page))[1];
        include_once __DIR__."/../../view/PhoneNumber/list.php";
    }

    public function delete() {
        $id = (int)$_GET['id'];
        if(empty($id)) die ('Undefined ID');
        (new PhoneNumber())->deleteById($id);
        $this->redirectToRead();
    }

    public function save() {

        if (!empty($_POST)) {
            try {
                $number = new PhoneNumber($_POST['id'],htmlspecialchars($_GET['contactId']),htmlspecialchars($_POST['PhoneNumber']));
                if (!empty($number->getByNumber($_POST['PhoneNumber']))) {
                    throw new Exception("Такой PhoneNumber уже существует", 405);
                }
                $number->save();
                $this->redirectToRead();
            } catch (Exception $e) {
                ExceptionService::error($e);
            }
        }
    }

    public function redirectToRead() {
        header("location: /?model=phoneNumber&action=read&contactId=".$_GET['contactId']."");
    }
}