<?php
include_once __DIR__."/../Model/Contact.php";
include_once __DIR__."/../Service/ExceptionService.php";

class ContactController
{
    public function create() {
        include_once __DIR__."/../../view/Contacts/form.php";
    }

    public function search() {
        $model = $_GET['model'];
        if (empty($_POST['search'])) {
            header("location: /?model=$model&action=read");
            die();
        }
        else {
            $page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;
            $contact = new Contact();
            $all = ($contact->search($_POST['search'],$page))[0];
            $total_pages = ($contact->search($_POST['search'],$page))[1];
            include_once __DIR__."/../../view/Contacts/list.php";
        }
    }

    public function update(){
        $id = (int)$_GET['id'];
        if (empty($id)) die ('Undefined ID');
        $contact = (new Contact())->getById($id);
        include_once __DIR__."/../../view/Contacts/form.php";
    }

    public function read() {
        $page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;
        $contact = new Contact();
        $all = ($contact->all($page))[0];
        $total_pages = ($contact->all($page))[1];
        include_once __DIR__."/../../view/Contacts/list.php";
    }

    public function delete() {
        $id = (int)$_GET['id'];
        if(empty($id)) die ('Undefined ID');
        (new Contact())->deleteById($id);
        $this->redirectToRead();
    }

    public function save() {
        if (!empty($_POST)) {
            try {

                $contact = new Contact($_POST['id'],htmlspecialchars($_POST['name']));
                if (!empty($contact->getByName($_POST['name']))) {
                    throw new Exception("Такой контакт уже существует", 405);
                }
                $contact->save();
                $this->redirectToRead();
            } catch (Exception $e) {
                ExceptionService::error($e);
            }
        }
    }

    public function redirectToRead() {
        header("location: /?model=contact&action=read");
    }
}