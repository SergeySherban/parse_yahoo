<?php
require_once 'header.php';
?>
<div class="container">
    <h1><?php echo $entertainment['title'] ?></h1>
    <p><?php echo $entertainment['publication_date'] ?></p>
    <img src="<?php echo $entertainment['image'] ?>" class="card-img-top" alt="<?php echo $entertainment['title'] ?>">
    <a href="<?php echo $entertainment['text'] ?>"><?php echo $entertainment['text'] ?></a>
</div>
</body>