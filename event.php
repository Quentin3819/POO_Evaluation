<?php

require_once 'bdd.php';
require_once 'myBDD.php';
class Event{
    protected $titre = null;

    protected $date = null;

    protected $dure = null;


    public static $_authorisedUpdate = ['$titre', '$date', 'dure'];

    public function __construct($id=null){
        if (!empty($id)) {
            $db = BDD::getConnection();

            $inst = $db->query('SELECT * FROM agenda WHERE id=' . $id);
            $result = $inst->fetch(PDO::FETCH_ASSOC);
            foreach ($result as $k => $v){
                $this->$k = $v;
            }
        }
    }

    public static function getAllPeople($filters=[]){
        $db = BDD::getConnection();
        $clause = [];

        foreach ($filters as $k =>$f){
            $clause[] = $k.'='.$db->quote($f);
        }
        $where = '';
        if(!empty($clause)){
            $where = ' WHERE '.implode(' AND ', $clause);
        }
        $query = 'SELECT * FROM event Left JOIN people USING(id)';
        var_dump($query);
        $res = $db->query($query);
        return $res->fetchAll(PDO::FETCH_CLASS,'Event');
    }
}