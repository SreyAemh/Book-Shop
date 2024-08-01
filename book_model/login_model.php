<?php
    require_once('../database.php');
   if($_SERVER['REQUEST_METHOD'] == 'POST') {
        login($_POST);
   }