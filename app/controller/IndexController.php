<?php
class IndexController extends Controller {
   
   public function display() {
        $films = Film::displayRandomMovie();
        $template = $this->twig->loadTemplate('/Index/display.html.twig'); //Charge la view
        echo $this->twig->render($template, array( // Rend sous la forme d'un tableau
            'films' => $films
        ));
   }
   
}