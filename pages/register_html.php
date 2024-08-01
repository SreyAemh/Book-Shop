<div class="container p-3 mt-3">
    <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
            <form action="book_model/register_model.php" method="post">
                <div class="form-group">
                    <input type="text" name="username" class="form-control" placeholder="Username">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Password">
                </div>
                <div class="form-group">
                    <input type="text" name="email" class="form-control" placeholder="Email">
                </div>
                <div class="form-group">
                    <input type="text" name="address" class="form-control" placeholder="Address">
                </div>
                <input type="hidden" name="role" class="form-control" value="user">
                <div class="form-group">
                    <button class="btn btn-warning btn-block" type="submit">Register now </button>
                </div>
            </form>
        </div>
        <div class="col-4"></div>
    </div>
</div>