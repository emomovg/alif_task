<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TASK</title>
    <link rel="stylesheet" href="./../style/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<header>
    <div class="container">
        <main>
            <div>
                <a href="/?model=contact&action=read"> <img src="/img/task.jpg" style="height: 50px; width: 50px"></a>
                <p>Alif TASK</p>
            </div>

            <form action="/?model=<?=$_GET['model']?>&action=search<?php if($_GET['model']!='contact') print "&contactId=".$_GET['contactId']?>" method="post">
                <input type="text" name="search">
                <input type="submit" value="search">
            </form>
        </main>
    </div>
</header>







