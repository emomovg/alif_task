<?php
include_once __DIR__."/../Service/DBConnector.php";

class Email
{
    private  $id;
    private $contactId;
    private $email;

    private $conn;

    public function __construct($id = null, $contactId = null, $email = null)
    {
        $this->conn = DBConnector::getInstance()->connect();
        $this->id = $id;
        $this->contactId = $contactId;
        $this->email = $email;
    }

    public function search($search, $page ,$contactId) {

        $size_page = 5;
        $offset = ($page-1)*$size_page;
        $row_count =mysqli_fetch_all(mysqli_query($this->conn,"select count(*) from (select * from email_address) as a where contactId='$contactId' and (ContactId LIKE '%$search%' or id LIKE '%$search%' or email LIKE '%$search%')"),MYSQLI_ASSOC)[0]['count(*)'];

        $total_pages = ceil($row_count/$size_page);
        $result = mysqli_query($this->conn,"select a.* from (select * from email_address) a where contactId='$contactId' and (ContactId LIKE '%$search%' or id LIKE '%$search%' or email LIKE '%$search%') LIMIT $offset,$size_page");
        return array( mysqli_fetch_all($result,MYSQLI_ASSOC),$total_pages);
    }


    public function save() {
        if ($this->id>0) {
            $query ="update email_address set email = '".$this->email."' where id = '".$this->id."' limit 1";
        }else {
            $query = "insert into email_address values(null,'".$this->contactId."','".$this->email."')";
        }
        mysqli_query($this->conn,$query);
    }

    public function all($contactId, $page) {
        $size_page = 5;
        $offset = ($page-1)*$size_page;
        $row_count = mysqli_fetch_all(mysqli_query($this->conn,"select count(*) from email_address where contactId='$contactId'"),MYSQLI_ASSOC)[0]['count(*)'];
        $total_pages = ceil($row_count/$size_page);
        $result = mysqli_query($this->conn,"select * from email_address  where contactId='$contactId' LIMIT $offset,$size_page ");
        return array(mysqli_fetch_all($result,MYSQLI_ASSOC),$total_pages);
    }

    public function getByEmail($email) {
        $result = $result = mysqli_query($this->conn,"select * from email_address where email='$email'");
        $email =mysqli_fetch_all($result,MYSQLI_ASSOC);
        return  reset($email);
    }


    public function getById($id) {
        $result = mysqli_query($this->conn,"select * from email_address where id='$id' limit 1");
        $email =mysqli_fetch_all($result,MYSQLI_ASSOC);
        return  reset($email);
    }

    public function deleteById($id) {
        mysqli_query($this->conn,"delete from email_address where id ='$id' limit 1");
    }


}