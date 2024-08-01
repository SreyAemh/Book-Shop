<div class="container mt-3 p-3">
        <div class="d-flex justify-content-end p-3">
            <button class="btn btn-info" onclick="window.history.back();">&#8592; Back</button>
        </div>
        <?php 
            require_once('database.php');
            $id = $_GET['id'];
            $books = selectOneBook($id);
            foreach ($books as $book):
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
                    <div class="info" style="width:120vh">
                        <h2 ><?= $book['title'] ?> </h2>
                        <p><?= $book['author'] ?> (Author)</p>
                        <strong>Price: $<?= $book['price'] ?></strong> 
                        <h2 class="mt-3">Description</h2>
                        <p><?= $book['description'] ?></p>
                        <h2>Product Details</h2>
                        <div style="display:flex">
                            <div class="text-right text-secondary">
                                <p class="my-0">Price</p>
                                <p class="my-0">Publish Date</p>
                                <p class="my-0">Language</p>
                                <p class="my-0">Categories</p>
                                <p class="my-0">Author</p>
                            </div>
                            <div class="ml-2">
                               <p class="my-0">$<?= $book['price'] ?></p>
                               <p class="my-0"><?= $book['publish_date'] ?></p>
                               <p class="my-0"><?= $book['language'] ?></p>
                               <p class="my-0"><?= $book['category'] ?></p>
                               <p class="my-0"><?= $book['author'] ?></p>
                            </div>
                        </div>
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