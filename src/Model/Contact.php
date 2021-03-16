<?php
include_once __DIR__."/../Service/DBConnector.php";

class Contact
{
    private  $id;
    private $name;

    private $conn;

    public function __construct($id = null, $name = null)
    {
        $this->conn = DBConnector::getInstance()->connect();
        $this->id = $id;
        $this->name = $name;
    }
    public function search($search,$page) {
        $size_page = 5;
        $offset = ($page-1)*$size_page;
        $row_count =mysqli_fetch_all(mysqli_query($this->conn,"select count(*) from (select * from contacts) as a where name LIKE '%$search%' or id LIKE '%$search%'"),MYSQLI_ASSOC)[0]['count(*)'];

        $total_pages = ceil($row_count/$size_page);
        $result = mysqli_query($this->conn,"select a.* from (select * from contacts) a where name LIKE '%$search%' or id LIKE '%$search%' LIMIT $offset,$size_page");
        return array( mysqli_fetch_all($result,MYSQLI_ASSOC),$total_pages);
    }


    public function save() {
        if ($this->id>0) {
            $query ="update contacts set name = '".$this->name."' where id = '".$this->id."' limit 1";
        }else {
            $query = "insert into contacts values(null,'".$this->name."')";
        }
        mysqli_query($this->conn,$query);
    }

    public function all($page) {
        $size_page = 5;
        $offset = ($page-1)*$size_page;
        $row_count = mysqli_fetch_all(mysqli_query($this->conn,"select count(*) from contacts"),MYSQLI_ASSOC)[0]['count(*)'];
        $total_pages = ceil($row_count/$size_page);
        $result = mysqli_query($this->conn,"select * from contacts LIMIT $offset,$size_page");
        return array( mysqli_fetch_all($result,MYSQLI_ASSOC),$total_pages);
    }

    public function getById($id) {
        $result = mysqli_query($this->conn,"select * from contacts where id='$id' limit 1");
        $contact =mysqli_fetch_all($result,MYSQLI_ASSOC);
        return  reset($contact);
    }

    public function getByName($name) {
        $result = $result = mysqli_query($this->conn,"select * from contacts where name='$name' limit 1");
        $contact =mysqli_fetch_all($result,MYSQLI_ASSOC);
        return  reset($contact);
    }

    public function deleteById($id) {
        mysqli_query($this->conn,"delete from contacts where id ='$id' limit 1");
    }

}