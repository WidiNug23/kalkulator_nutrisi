<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

// Kalkulator Gizi Routes
$routes->get('kalkulator_gizi', 'KalkulatorGiziController::index', ['filter' => 'cors']);
$routes->match(['post', 'options'], 'kalkulator_gizi/calculate', 'KalkulatorGiziController::calculate', ['filter' => 'cors']);
$routes->match(['get', 'options'], 'kalkulator_gizi/(:num)', 'KalkulatorGiziController::show/$1');
$routes->match(['put', 'options'], 'kalkulator_gizi/(:num)', 'KalkulatorGiziController::update/$1');
$routes->match(['delete', 'options'], 'kalkulator_gizi/delete/(:num)', 'KalkulatorGiziController::delete/$1');
$routes->get('/', 'KalkulatorGiziController::kalkulator');
