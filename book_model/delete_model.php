<?php
    require_once('../database.php');
    $id = $_GET['id'];
    deleteBook($id);