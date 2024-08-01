
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">Bookshop</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="?page=home">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="?page=fantasy">Fantasy</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="?page=food">Food</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="?page=science">Science</a>
      </li>
    </ul>
    <form class="navbar-form navbar-left" action="?page=home" method="post">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search by title" name="search">
        <div class="input-group-btn">
          <button type="submit" style="border: gray; padding:7px; border-radius:0 5px 5px 0;"><i class="fa fa-search"></i></button>
        </div>
        <div class="btn-group ml-2" >
                <?php if(isset($_SESSION['username'])): ?>
                  <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split" data-toggle="dropdown"><?= $_SESSION['username'] ?> </button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="?page=logout">Logout</a>
                    <a class="dropdown-item" href="?page=register_html">Register</a>
                <?php else: ?>
                  <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">Guest </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="?page=login_html">Login</a>
                    <a class="dropdown-item" href="?page=register_html">Register</a>
                  <?php endif; ?>
                </div>
        </div>
      </div>
    </form>
  </div>
</nav>
