<?php
/**
 * Don't change this mail directly, set mail config in admin panel instead.
 */
$config->market = new stdclass();
$config->market->create = new stdclass();
$config->market->edit   = new stdclass();

$config->market->create->requiredFields = 'name,address,email';
$config->market->edit->requiredFields   = 'name,address,email';

global $lang, $app;

$config->market->mycustomers = new stdClass();
$config->market->mycustomers->search['module']                = 'market';
$config->market->mycustomers->search['fields']['customerID']  = $lang->market->ID;
$config->market->mycustomers->search['fields']['name']        = $lang->market->name;
$config->market->mycustomers->search['fields']['sex']         = $lang->market->sex;
$config->market->mycustomers->search['fields']['age']         = $lang->market->age;
$config->market->mycustomers->search['fields']['unit']        = $lang->market->unit;
$config->market->mycustomers->search['fields']['address']     = $lang->market->address;
$config->market->mycustomers->search['fields']['telphone']    = $lang->market->telphone;
$config->market->mycustomers->search['fields']['email']       = $lang->market->email;
$config->market->mycustomers->search['fields']['type']        = $lang->market->type;
$config->market->mycustomers->search['fields']['level']       = $lang->market->level;
$config->market->mycustomers->search['fields']['potential_business'] = $lang->market->potential_business;
$config->market->mycustomers->search['fields']['zone']        = $lang->market->zone;
$config->market->mycustomers->search['fields']['saler']       = $lang->market->saler;


$config->market->mycustomers->search['params']['ID']         = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->market->mycustomers->search['params']['name']       = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->market->mycustomers->search['params']['sex']        = array('operator' => '=',   'control' => 'select', 'values' => '');
$config->market->mycustomers->search['params']['age']        = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->market->mycustomers->search['params']['unit']       = array('operator' => 'include',        'control' => 'select', 'values' => '');
$config->market->mycustomers->search['params']['address']    = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->market->mycustomers->search['params']['telphone']   = array('operator' => 'include',       'control' => 'input',  'values' => '');
$config->market->mycustomers->search['params']['email']      = array('operator' => 'include',        'control' => 'input',  'values' => '');
$config->market->mycustomers->search['params']['type']       = array('operator' => 'include',  'control' => 'select', 'values' => '');
$config->market->mycustomers->search['params']['level']      = array('operator' => '=',        'control' => 'select', 'values' => '');
$config->market->mycustomers->search['params']['potential_business'] = array('operator' => 'include',        'control' => 'input',  'values' => '');
$config->market->mycustomers->search['params']['zone']      = array('operator' => 'include',        'control' => 'input',  'values' => '');
$config->market->mycustomers->search['params']['saler']     = array('operator' => '=',        'control' => 'input',  'values' => '');

