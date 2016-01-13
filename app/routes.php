<?php

$app->get('/','App\Action\HomeAction:dispatch')->setName('homepage');
$app->get('/login', 'App\Action\HomeAction:login')->setName('login');
$app->get('/logout', 'App\Action\HomeAction:logout')->setName('logout');
$app->get('/register', 'App\Action\HomeAction:register')->setName('register');
$app->get('/dashboard', 'App\Action\HomeAction:dashboard')->setName('dashboard');
$app->post('/login','App\Action\HomeAction:loginPost')->setName('login.post');
//$app->post('/login','App\Action\HomeAction:testJson')->setName('login.post');
$app->post('/register','App\Action\HomeAction:registerPost')->setName('register.post');

$app->get('/api/secteurs','App\Action\SecteurAction:dispatch');
$app->get('/api/secteurs/{id}','App\Action\SecteurAction:show');
$app->get('/api/secteurs/{id}/critere','App\Action\SecteurAction:critere');
$app->get('/api/secteurs/{id}/critere/{critere_id}','App\Action\SecteurAction:values');
$app->get('/api/secteurs/{id}/critere/{critere_id}/{year}','App\Action\SecteurAction:valuesPerYear');
$route = App\Model\Route::all();
foreach ($route as $rt) {
	$app->get('/'.$rt->route,$rt->address)->setName($rt->route);
}
