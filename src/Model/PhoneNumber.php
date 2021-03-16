<?php
include_once __DIR__."/../Service/DBConnector.php";

class phoneNumber
{
    private  $id;
    private $contactId;
    private $phoneNumber;

    private $conn;

    public function __construct($id = null, $contactId = null, $phoneNumber = null)
    {
        $this->conn = DBConnector::getInstance()->connect();
        $this->id = $id;
        $this->contactId = $contactId;
        $this->phoneNumber = $phoneNumber;
    }

    public function search($search,$page, $contactId) {
        $size_page = 5;
        $offset = ($page-1)*$size_page;
        $row_count =mysqli_fetch_all(mysqli_query($this->conn,"select count(*) from (select * from phone_number) as a where contactId='$contactId' and (ContactId LIKE '%$search%' or id LIKE '%$search%' or PhoneNumber LIKE '%$search%')"),MYSQLI_ASSOC)[0]['count(*)'];

        $total_pages = ceil($row_count/$size_page);
        $result = mysqli_query($this->conn,"select a.* from (select * from phone_number) a where contactId='$contactId' and (ContactId LIKE '%$search%' or id LIKE '%$search%' or PhoneNumber LIKE '%$search%') LIMIT $offset,$size_page");
        return array( mysqli_fetch_all($result,MYSQLI_ASSOC),$total_pages);
    }


    public function save() {
        if ($this->id>0) {
            $query ="update phone_number set PhoneNumber = '".$this->phoneNumber."' where id = '".$this->id."' limit 1";
        }else {
            $query = "insert into phone_number values(null,'".$this->contactId."','".$this->phoneNumber."')";
        }
        mysqli_query($this->conn,$query);
    }

    public function all($contactId, $page) {
        $size_page = 5;
        $offset = ($page-1)*$size_page;
        $row_count = mysqli_fetch_all(mysqli_query($this->conn,"select count(*) from phone_number where contactId='$contactId'"),MYSQLI_ASSOC)[0]['count(*)'];
        $total_pages = ceil($row_count/$size_page);
        $result = mysqli_query($this->conn,"select * from phone_number  where contactId='$contactId' LIMIT $offset,$size_page ");
        return array(mysqli_fetch_all($result,MYSQLI_ASSOC),$total_pages);
    }

    public function getByNumber($number) {
        $result = $result = mysqli_query($this->conn,"select * from phone_number where PhoneNumber='$number'");
        $number =mysqli_fetch_all($result,MYSQLI_ASSOC);
        return  reset($number);
    }


    public function getById($id) {
        $result = mysqli_query($this->conn,"select * from phone_number where id='$id' limit 1");
        $email =mysqli_fetch_all($result,MYSQLI_ASSOC);
        return  reset($email);
    }

    public function deleteById($id) {
        mysqli_query($this->conn,"delete from phone_number where id ='$id' limit 1");
    }

}