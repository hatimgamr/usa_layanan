<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

$routes->get('Phone', 'PhoneController::index');

$routes->post('Phone', 'PhoneController::create');

$routes->put('Phone/(:num)', 'PhoneController::update/$1');

$routes->delete('Phone/(:num)', 'PhoneController::delete/$1');

$routes->patch('Phone/(:num)', 'PhoneController::patch/$1');

$routes->head('Phone/(:num)', 'PhoneController::head/$1');

$routes->post('register', 'PhoneController::register');
