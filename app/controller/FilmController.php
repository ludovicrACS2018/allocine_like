<?php
class FilmController extends Controller {

    public function display() {
        $slug = $this->route["params"]["slug"];
        $film = Film::getFromSlug($slug);
        $gender = Film::getRealisateurFromFilm();
        $real = Film::getGenresFromFilm();
        if ($film ===false){
            $template = $this->twig->loadTemplate('/Error/404.html.twig');
            echo $this->twig->render($template, array());

        } else {
            $template = $this->twig->loadTemplate('/Film/display.html.twig');

            echo $this->twig->render($template, array(
                'film' => $film,
                'gender' => $gender,
                'real' => $real
            ));
        }
       
            

   }
}