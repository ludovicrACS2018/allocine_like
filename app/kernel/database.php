<?php 
/* $pdo = new PDO('mysql:host=localhost;dbname=allocine_like', 'root', ''); //Connexion à la BDD avec un pilote MySQL */

class Database {
    static protected $_instance = null;
    protected $_db;

    static public function getInstance() {
       if( is_null(self::$_instance) )
          self::$_instance = new Database();
       return self::$_instance;
    }

    protected function __construct() {
       // A faire : fichier de config
       $this->_db = new PDO(
          "mysql:host=localhost;dbname=allocine_like;charset=utf8",
          "root",
          ""
       );
    }

    public function __call($method, array $arg) {
       // Si on appelle une méthode qui n'existe pas, on 
       // delegue cet appel à l'objet PDO $this->_db
       return call_user_func_array(array($this->_db, $method), $arg);
    }
 }
 