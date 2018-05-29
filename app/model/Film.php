<?php

class Film{
    public $id_film, $slug, $gender, $real;
    
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

    public static function getRealisateurFromFilm($id_film){
        $db = Database::getInstance();
        $sql = "SELECT * FROM realisateur AS r 
                INNER JOIN film_as_real AS h 
                WHERE h.id_film = :id_film
                AND r.id_realisateur = h.id_realisateur";
        $stmt = $db->prepare($sql);
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        $stmt->bindValue(':id_film', $id_film, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll(); 
   }

   public static function getGenresFromFilm($id_film){
    $db = Database::getInstance();
    $sql = "SELECT * FROM genre AS g 
            INNER JOIN film_as_genre AS gh 
            where gh.id_film = :id_film
            and g.id_genre = gh.id_genre";
    $stmt = $db->prepare($sql);
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $stmt->bindValue(':id_film', $id_film, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetchAll(); 
}
}