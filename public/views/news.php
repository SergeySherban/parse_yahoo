<?php
require_once 'header.php';
?>
<div class="container-fluid">
    <div class="row">
    <?php
    foreach($news as $article) {
    ?>
        <div class="card col-md-3" style="width: 18rem; margin: 15px">
            <img src="<?php echo $article['image'] ?>" class="card-img-top" alt="<?php echo $article['title'] ?>">
            <div class="card-body">
                <h5 class="card-title"><?php echo $article['title'] ?></h5>
                <p class="card-text"><?php echo $article['publication_date'] ?></p>
            </div>
            <div class="card-body">
                <a href="/news/<?php echo $article['id'] ?>" class="card-link">Learn More</a>
            </div>
        </div>
    <?php
    }
    ?>
    </div>
</div>
</body>
