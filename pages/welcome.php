
<div class="container p-3 mt-2">
    <?php if (isset($_SESSION['message'])): ?>
                <div class="alert alert-success alert-dismissible fade show">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Success !</strong> <?= $_SESSION['message'] ?>
                </div>
            <?php endif; ?>
    <h1 class="display-1">
        Welcome to <strong class="text-success"><?= $_SESSION['username'] ?></strong>
    </h1>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos quo placeat, optio culpa in suscipit facere voluptatibus illum sit modi libero quasi asperiores, molestiae esse blanditiis expedita, est quae. Et facilis reiciendis expedita, recusandae, voluptates nesciunt ratione iusto, illo in minima nulla cum repellat voluptatem eius atque soluta explicabo ullam eveniet dignissimos corrupti sed. Fuga nesciunt, nam, incidunt ratione architecto aperiam saepe velit illo repudiandae voluptas nobis! Illo rerum ratione libero non amet dignissimos ipsam harum perspiciatis sint optio quod voluptate quos ab delectus molestiae doloremque dolor odit mollitia sed soluta facere, in nesciunt placeat eligendi! A voluptas alias obcaecati!</p>
    <?php if(isset($_SESSION['role']) and $_SESSION['role'] == 'admin'): ?>
        <button class="btn btn-primary">Only Admin Can see this</button>
        <button class="btn btn-danger">Only Admin Can see this</button>
    <?php endif; ?>
</div>
