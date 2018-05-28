<?php

class Film{
    public $id, $description, $expiration, $slug;
    
    public static function getFromSlug($slug) {
       $db = Database::getInstance();
       $sql = "SELECT * FROM film WHERE slug = :slug";
       $stmt = $db->prepare($sql);
       $stmt->bindValue(':slug', $slug, PDO::PARAM_STR);
       $stmt->execute();
       return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public static function displayRandomMovie() {
       $db = Database::getInstance();
       $sql = 'SELECT * FROM `film` ORDER BY RAND() LIMIT 6';
       $stmt = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
       return $stmt;
    }

   /*  public static function displayRandomGender(){
        $db = Database::getInstance();
        $sql = 'SELECT * FROM `film` ORDER BY RAND("gender") LIMIT 3';
        $stmt = $db->prepare($sql);
        $stmt = bindValue();
        $stmt->execute();
    } */
 }