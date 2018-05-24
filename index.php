<?php require 'vendor/autoload.php';?>
<?=
// Routing
$page = 'home';
if (isset($_GET['p'])){
    $page = $_GET['p'];
}
//Rendu du template
$loader = new Twig_Loader_Filesystem(__DIR__ . '/templates'); //précise dans quel dossier twig doit aller chercher les templates (départ du dossier actuel à /templates)
//On initiliase maintenant Twig
$twig = new Twig_Environment($loader,[
    'cache' => __DIR__ . '/tmp',
    'auto_reload' => true,
]);

if($page === 'home'){
    echo $twig->render('home.twig');
}