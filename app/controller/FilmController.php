<?php
class FilmController extends Controller {

    public function display() {
        $slug = $this->route["params"]["slug"];
        $film = Film::getFromSlug($slug);
        $gender = Film::getGenresFromFilm($film['id_film']);
        $real = Film::getRealisateurFromFilm($film['id_film']);
        if ($film ===false){
            $template = $this->twig->loadTemplate('/Error/404.html.twig');
            echo $this->twig->render($template, array());

        } else {
            $template = $this->twig->loadTemplate('/Film/display.html.twig');

            echo $this->twig->render($template, array(
                'film' => $film,
                'real' => $real,
                'gender' => $gender,
                
            ));
        }
       
            

   }
}