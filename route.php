<?php

require_once 'controllers/NewsController.php';
require_once 'controllers/EntertainmentController.php';

Flight::route('/', function() {
    require_once 'public/views/home.php';
});

Flight::route('/news', function() {
    $news = new NewsController();
    $news->showNews();
});

Flight::route('/news/@id', function($id){
    $news = new NewsController();
    $news->singleNews($id);
});

Flight::route('/entertainment', function() {
    $entertainment = new EntertainmentController();
    $entertainment->showEntertainmentNews();
});

Flight::route('/entertainment/@id', function($id){
    $entertainment = new EntertainmentController();
    $entertainment->singleEntertainmentNews($id);
});