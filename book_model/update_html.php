<?php require_once('../partial/header.php'); ?>
    <div class="container p-4">
        <?php
            require_once('../database.php');
            $id = $_GET['id'];
            $book = selectOneBook($id);
            foreach($book as $book):
        ?>
        <form action="update_model.php" method="post"  enctype="multipart/form-data">
            <input type="hidden" value="<?= $book['book_id'] ?>" name="bookId">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Title" name="title" value="<?= $book['title'] ?>">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Category" name="category" value="<?= $book['category'] ?>">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Price" name="price" value="<?= $book['price'] ?>">
            </div>
            <div class="form-group">
                <input type="date" class="form-control" placeholder="Publish Date" name="datepublish" value="<?= $book['publish_date'] ?>">
                <small>(Publish Date)</small>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Language" name="language" value="<?= $book['language'] ?>">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Author Name" name="author" value="<?= $book['author'] ?>">
            </div>
            <div class="form-group">
                <input type="file" class="form-control" placeholder="Image URL" name="image" value="">
            </div>
            <div class="form-group">
                <!-- <input type="text" class="form-control" placeholder="Description" name="description"> -->
                <textarea name="description" id="" cols="70" rows="10" placeholder="Description.." ><?= $book['description'] ?></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Update</button>
            </div>
        </form>
        <?php endforeach; ?>
    </div>
<?php require_once('../partial/footer.php'); ?>