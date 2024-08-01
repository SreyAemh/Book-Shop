<div class="container p-3 mt-2">
    <?php if (isset($_SESSION['message'])): ?>
                <div class="alert alert-success alert-dismissible fade show">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Success !</strong> <?= $_SESSION['message'] ?>
                </div>
                <h1 class="display-1">Welcome <strong class="text-success"><?= $_SESSION['username'] ?></strong></h1>
            <?php endif; ?>
    
</div>
<div class="container p-4">        
        <div class="d-flex justify-content-end p-2">
            <?php if(isset($_SESSION['role']) and $_SESSION['role'] == 'admin'): ?>
                <a href="book_model/create_html.php" class="btn btn-info mr-2">Add Book +</a>
            <?php endif; ?>
            <div class="btn-group">
                <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">Sort by </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="?sort=AZ">A-Z</a>
                    <a class="dropdown-item" href="?sort=ZA">Z-A</a>
                    <a class="dropdown-item" href="?sort=oldest">Oldest</a>
                    <a class="dropdown-item" href="?sort=lastest">Lastest</a>
                </div>
            </div>
        </div>

        <?php 
            require_once('database.php');
            $books = "";
            if($_SERVER['REQUEST_METHOD'] =='POST'){
                //SEARCH 
                $books = searchByTitle($_POST);
            }else {
                //select
                if(isset($_GET['sort'])){
                    $books = sortBy($_GET['sort']);
                }else{
                    $books = selectAllBooks();
                }
            }
            foreach ($books as $book):
                $description = readMore($book['description'],200);
        ?>
        <div class="card">
            <div class="card-body">
                <div class="d-flex justify-content-end">
                        <span><?= $book['date'] ?></span>
                </div>
               <div class="d-flex">
                    <div class="card-image mr-3">
                        <img class="img-fluid" width="200" src="uploads/<?= $book['image'] ?>" alt="">
                    </div>
                    <div class="info">
                        <h3 ><?= $book['title'] ?> </h3>
                        <p><?= $book['author'] ?></p>
                        <strong>Price: $<?= $book['price'] ?></strong> 
                        <p class="mt-3" style="width:100vh"><?= $description ?>... <a href="?page=detail&id=<?= $book['book_id'] ?>" class="text-primary">Readmore</a></p>
                    </div>
               </div>
                <?php if(isset($_SESSION['role']) and $_SESSION['role'] == 'admin'): ?>
                <div class="action d-flex justify-content-end">
                    <a href="book_model/update_html.php?id=<?= $book['book_id'] ?>" class="btn btn-primary btn-sm mr-2"><i class="fa fa-pencil"></i></a>
                    <a href="book_model/delete_model.php?id=<?= $book['book_id'] ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                </div>
                <?php endif; ?>
    
            </div> 
        </div>
        <?php endforeach; ?>
    </div>