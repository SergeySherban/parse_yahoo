<?php

require_once '../Connection.php';

class Articles
{
    public function getNewsRecords () {
        $allNews = Connection::conn()->query(
            "SELECT  `id`, `title`, `text`, `image`, `publication_date`
            FROM `articles`
            WHERE `type_id` = 1
            ORDER BY `publication_date` DESC"
        );
        $allNews->execute();
        return $allNews->fetchAll();
    }

    public function getEntertainmentRecords () {
        $allEntertainment = Connection::conn()->query(
            "SELECT  `id`, `title`, `text`, `image`, `publication_date`
            FROM `articles`
            WHERE `type_id` = 2
            ORDER BY `publication_date` DESC"
        );
        $allEntertainment->execute();
        return $allEntertainment->fetchAll();
    }

    public function getSingleRecord($id) {
        $news = Connection::conn()->prepare(
            "SELECT  `title`, `text`, `image`, `publication_date`
            FROM `articles`
            WHERE `id` = :id"
        );
        $news->execute(['id'=>$id]);
        return $news->fetch(PDO::FETCH_ASSOC);
    }

    public function saveNews ($data) {
        $image_path = '';
        $title = '';
        $text = '';
        $publication_date = '';
        foreach ($data as $item) {
            if ($item['image'] != 'N/A') {
                $image_path = '../uploads/' . basename($item['image']);
            } else {
                $image_path = '../uploads/thumbnail.jpg';
            }
            $title = $item['title'];
            $text = $item['link'];
            $publication_date = $item['pubDate'];
        }

        $addNews = Connection::conn()->prepare("
                        INSERT INTO `articles`
                        (`title`, `text`, `image`, `publication_date`, `type_id`)
                        VALUES (:title, :text, :image, :publication_date, '1')
                        ON DUPLICATE KEY UPDATE title = :title   
                        ");
        $addNews->execute(['title'=>$title, 'text'=>$text, 'image'=>$image_path, 'publication_date'=>$publication_date]);
    }

    public function saveEntertainment ($data) {
        $image_path = '';
        $title = '';
        $text = '';
        $publication_date = '';
        foreach ($data as $item) {
            if ($item['image'] != 'N/A') {
                $image_path = '../uploads/' . basename($item['image']);
            } else {
                $image_path = '../uploads/thumbnail.jpg';
            }
            $title = $item['title'];
            $text = $item['link'];
            $publication_date = $item['pubDate'];
        }

        $addNews = Connection::conn()->prepare("
                        INSERT INTO `articles`
                        (`title`, `text`, `image`, `publication_date`, `type_id`)
                        VALUES (:title, :text, :image, :publication_date, '2')
                        ON DUPLICATE KEY UPDATE title = :title   
                        ");
        $addNews->execute(['title'=>$title, 'text'=>$text, 'image'=>$image_path, 'publication_date'=>$publication_date]);
    }
}