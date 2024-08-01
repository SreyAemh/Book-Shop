<?php 
    require_once('partial/header.php');
    include_once('partial/navbar.php');

    if(isset($_GET['page'])) {
        $hasPage = file_exists('pages/' . $_GET['page'] . '.php');
        $page = "pages/". $_GET['page'] . ".php";
        if($hasPage) {
            require_once($page);
        }else {
            require_once('pages/home.php');
        }
    }else {
        require_once('pages/home.php');
    }

    
    require_once('partial/footer.php');