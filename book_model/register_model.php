<?php
    require_once('../database.php');
    if($_SERVER['REQUEST_METHOD'] == 'POST') {
        register($_POST);
        header('location: http://localhost/PHP-PROJECT-SREYAEM/?page=login_html');
    }