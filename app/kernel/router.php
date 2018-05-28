<?php
class Router {
   public static function analyze( $query ) { // Route vers l'erreur 404
      $result = array(
         "controller" => "Error",
         "action" => "error404",
         "params" => array()
      );
      if( $query === "" || $query === "/" ) { // Route vers page d'accueil
         $result["controller"] = "Index";
         $result["action"] = "display";
      } else {
         $parts = explode("/", $query);

         if($parts[0] == "film" && count($parts) == 2) { // Route vers fiche Film
            $result["controller"] = "Film";
            $result["action"] = "display";
            $result["params"]["slug"] = $parts[1];            
        }
      }
      return $result;
   }
}