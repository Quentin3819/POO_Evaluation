<?php

require_once 'bdd.php';
require_once 'agenda.php';
require_once 'event.php';

//$agent= Agenda::findAllAgenda();
//var_dump($agent);
//
//$event = Event::findAllEvent();
//var_dump($event);

$allgent = Agenda::AllAgenda();
echo '<pre>';
var_dump($allgent);
echo '</pre>';

$allevent = Event::getAllPeople();
echo '<pre>';
var_dump($allevent);
echo '</pre>';