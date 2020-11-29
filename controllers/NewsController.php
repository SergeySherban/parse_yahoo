<?php
require_once '../models/Articles.php';

class NewsController
{
    public function showNews () {
        $articles = new Articles();
        $news = $articles->getNewsRecords();
        Flight::render('news.php', ['news' => $news]);
    }

    public function singleNews($id) {
        $articles = new Articles();
        $news = $articles->getSingleRecord($id);
        Flight::render('single-news.php', ['news' => $news]);
    }

    public function  parseNews () {
        $url = "https://finance.yahoo.com/news/rss";
        $feeds = file_get_contents($url);
        $rss = simplexml_load_string($feeds);
        $items = [];
        $articles = new Articles();

        foreach($rss->channel->item as $item) {
            $image = '';
            $image = 'N/A';

            foreach ($item->children('media', true) as $k => $v) {
                $attributes = $v->attributes();
                if ($k == 'content') {
                    if (property_exists($attributes, 'url')) {
                        $image = $attributes->url;
                    }
                }
            }

            $items[] = [
                'link' => $item->link,
                'title' => $item->title,
                'image' => $image,
                'pubDate' => $item->pubDate,
            ];

            $insertToDb = $articles->saveNews($items);
        }

        //Save image in uploads
        foreach ($items as $item) {
            if($item['image'] != 'N/A') {
                $image_name = basename($item['image']);
                if(!file_exists($_SERVER['DOCUMENT_ROOT'] . 'uploads/' . $image_name)) {
                    file_put_contents($_SERVER['DOCUMENT_ROOT'] . 'uploads/' . $image_name, file_get_contents($item['image']));
                } else {
                    continue;
                }
            }
        }
    }

}