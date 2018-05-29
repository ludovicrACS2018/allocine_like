<?php
require_once ROOT .'/vendor/autoload.php';

class Controller {
    protected $route;
    protected $view;

    public $loader;
    public $twig;

    public function __construct($route) {
        $this->route = $route;

        $this->loader = new Twig_Loader_Filesystem('app/view');
        $this->twig = new Twig_Environment($this->loader, array(
            'cache' => false,
        ));
    }
}