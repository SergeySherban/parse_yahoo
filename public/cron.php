<?php
require_once '../controllers/NewsController.php';
require_once '../controllers/EntertainmentController.php';

$news = new NewsController();
$entertainment = new EntertainmentController();

$news->parseNews();
$entertainment->parseEntertainmentNews();
