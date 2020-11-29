<?php
require_once 'header.php';
?>
<div class="container">
    <h1><?php echo $news['title'] ?></h1>
    <p><?php echo $news['publication_date'] ?></p>
    <img src="<?php echo $news['image'] ?>" class="card-img-top" alt="<?php echo $news['title'] ?>">
    <a href="<?php echo $news['text'] ?>"><?php echo $news['text'] ?></a>
</div>
</body>