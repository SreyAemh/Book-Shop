<?php
// start session
    // session_start();
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    }
    
/**
 * Connect to database
 */
function db() {
    return new mysqli('localhost', 'root', '', 'bookshop');
}

function readMore($text, $number){
    return substr($text, 0, $number);
}

function searchByTitle($title){
    $name = $title['search'];
    return db()->query("SELECT * FROM books WHERE title LIKE '%$name%'");
    
}

function searchByType($title){
    $name = $title;
    return db()->query("SELECT * FROM books WHERE category LIKE '%$name%'");
    
}

function sortBy($word){
    if ($word == "AZ") {
        return db()->query("SELECT * FROM books ORDER BY title ASC");
    }else if ($word == "ZA") {
        return db()->query("SELECT * FROM books ORDER BY title DESC");
    }else if ($word == "oldest") {
        return db()->query("SELECT * FROM books ORDER BY publish_date ASC");
    }else {
        return db()->query("SELECT * FROM books ORDER BY publish_date DESC");
    }
}

function uploadImage($file) {
    $imageName = $_FILES['image']['name'];
    $imagTmp = $_FILES['image']['tmp_name'];
    $imageSize = $_FILES['image']['size'];
    $error = $_FILES['image']['error'];
            $extension = pathinfo($imageName, PATHINFO_EXTENSION);
            $extensionLocal = strtolower($extension);
            $allowExtension = array('jpg', 'jpeg', 'png');
            if(in_array($extensionLocal, $allowExtension)) {
                $newImageName = uniqid('post-', true) . '.' . $extensionLocal;
                $folderImage = '../uploads/'. $newImageName;
                move_uploaded_file($imagTmp, $folderImage);
                return $newImageName;
            }
            else{
                return "error";
            }
   
   
}
/**
 * Create new book record
 */
function createBook($value) {
    $title = $value['title'];
    $category = $value['category'];
    $price = $value['price'];
    $pubdate = $value['datepublish'];
    $image_url = uploadImage($value);
    $language = $value['language'];
    $author = $value['author'];
    $description = $value['description'];
    db()->query("INSERT INTO books (title, category, price, publish_date, image, language, author, description) VALUES('$title', '$category','$price','$pubdate','$image_url','$language','$author','$description')");
    header("Location: ../index.php?page=home");
}

/**
 * Get all data from table books
 */
function selectAllBooks() {
    return db()->query("SELECT * FROM books ORDER BY book_id DESC");
}

/**
 * Get only one on record by id 
 */
function selectOneBook($id) {
    return db()->query("SELECT * FROM books WHERE book_id = $id");
}

/**
 * Delete book by id
 */
function deleteBook($id) {
    db()->query("DELETE FROM books WHERE book_id = $id");

    header("Location: ../index.php?page=home");
}


/**
 * Update book
 */
function updateBook($value) {
    $title = $value['title'];
    $category = $value['category'];
    $price = $value['price'];
    $pubdate = $value['datepublish'];
    $image = uploadImage($value);
    $language = $value['language'];
    $author = $value['author'];
    $description = $value['description'];
    $id = $value['bookId'];
    // db()->query("UPDATE books SET title = '$title', category = '$category', price = '$price', publish_date = '$pubdate', image = '$image', language = '$language', author = '$author', description = '$description' WHERE books.book_id = $id");
    db()->query("UPDATE books SET image = '$image' where book_id = $id");
    header("Location: ../index.php?page=home");
    
}


// manage users
function getUser() {
    return db()->query("SELECT * FROM users");
}

function login($value) {
    $username = trim($value['username']);
    $password = trim($value['password']);
    $users = getUser();

    foreach ($users as $user) {
       echo (password_verify($password,trim($user['password'])));
       if(password_verify($password,trim($user['password'])) and $username === $user['username']) {
            $_SESSION['username'] = $username;
            $_SESSION['role'] = $user['role'];
            $_SESSION['message'] = "Login successful";
            header('Location: http://localhost/PHP-PROJECT-SREYAEM/?page=home');
       }else {
            header("Location: http://localhost/PHP-PROJECT-SREYAEM/?page=login_html");
       }
    }
}

function logout() {
    session_start();
    session_destroy();
    header("Location: http://localhost/PHP-PROJECT-SREYAEM/?page=login_html");
}

function register($value) {
  $username = trim($value['username']);
  $password = password_hash(trim($value['password']), PASSWORD_DEFAULT);
  $email = trim($value['email']);
  $address = trim($value['address']);
  $role = $value['role'];
  return db()->query("INSERT INTO users(username, password, role, email, address) VALUES('$username', '$password', '$role', '$email', '$address')");   
}
?>