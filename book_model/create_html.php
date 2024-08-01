<?php require_once('../partial/header.php'); ?>
    <div class="container p-4">
        <form action="create_model.php" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Title" name="title">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Category" name="category">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Price" name="price">
            </div>
            <div class="form-group">
                <input type="date" class="form-control" placeholder="Publish Date" name="datepublish">
                <small>(Publish Date)</small>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Language" name="language">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Author Name" name="author">
            </div>
            <div class="form-group">
                <input type="file" class="form-control" placeholder="Image URL" name="image" id="image">
            </div>
            <div class="form-group">
                <textarea name="description" id="" cols="70" rows="10" placeholder="Description.."></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Create</button>
            </div>
        </form>
    </div>
<?php require_once('../partial/footer.php'); ?>