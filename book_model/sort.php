<?php
    require_once('../database.php');
    $word = $_GET['sort'];
    sortBy($word);