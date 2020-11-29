<?php
require_once '../models/Articles.php';

class EntertainmentController
{
    public function showEntertainmentNews () {
        $articles = new Articles();
        $entertainment = $articles->getEntertainmentRecords();
        Flight::render('entertainment.php', ['entertainment' => $entertainment]);
    }

    public function singleEntertainmentNews($id) {
        $articles = new Articles();
        $entertainment = $articles->getSingleRecord($id);
        Flight::render('single-entertainment.php', ['entertainment' => $entertainment]);
    }

    public function  parseEntertainmentNews () {
        $url = "https://www.yahoo.com/entertainment/rss";
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

            $insertToDb = $articles->saveEntertainment($items);
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