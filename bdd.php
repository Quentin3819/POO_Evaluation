<?php

class BDD {
    protected static $_instance = null;

    static function getConnection() {
        if(is_null(self::$_instance)){
            self::$_instance = new PDO ('mysql:host=localhost;dbname=Agenda_db',"root","quentin01");
        }
        return self::$_instance;
    }

}
