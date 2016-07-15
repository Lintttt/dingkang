<?php
$config->pm = new stdclass();
$config->pm->createpm = new stdclass();
$config->pm->editpm   = new stdclass();
$config->pm->createlogistics = new stdclass();
$config->pm->editlogistics   = new stdclass();

$config->pm->createpm->requiredFields         = 'projectID,pjname';
$config->pm->editpm->requiredFields           = 'projectID,pjname';
$config->pm->createlogistics ->requiredFields = 'projectID,name,expressID';
$config->pm->editlogistics->requiredFields    = 'projectID,name,expressID';

global $lang,$app;
$app->loadLang('pm');

$config->pm->myprojects = new stdClass();
$config->pm->myprojects->search['module'] = 'pm';
$config->pm->myprojects->search['fields']['projectID']        = $lang->pm->projectID;
$config->pm->myprojects->search['fields']['pjname']           = $lang->pm->pjname;
$config->pm->myprojects->search['fields']['signtime']         = $lang->pm->signtime;
$config->pm->myprojects->search['fields']['contractmoney']    = $lang->pm->contractmoney;
$config->pm->myprojects->search['fields']['actualmoney']      = $lang->pm->actualmoney;
$config->pm->myprojects->search['fields']['invoicemoney']     = $lang->pm->invoicemoney;
$config->pm->myprojects->search['fields']['uninvoicemoney']   = $lang->pm->uninvoicemoney;
$config->pm->myprojects->search['fields']['unreturedmoney']   = $lang->pm->unreturedmoney;

$config->pm->myprojects->search['params']['projectID']        = array('operator' => '=',  'control' => 'select',  'values' => '', 'class' => 'form-control chosen');
$config->pm->myprojects->search['params']['pjname']           = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->pm->myprojects->search['params']['signtime']         = array('operator' => '=',  'control' => 'input',  'values' => '',  'class' => 'date');
$config->pm->myprojects->search['params']['contractmoney']    = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->myprojects->search['params']['actualmoney']      = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->myprojects->search['params']['invoicemoney']     = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->myprojects->search['params']['uninvoicemoney']   = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->myprojects->search['params']['unreturedmoney']   = array('operator' => '=',  'control' => 'input',  'values' => '');


$config->pm->logistics = new stdClass();
$config->pm->logistics->search['module'] = 'logistics';
$config->pm->logistics->search['fields']['name']              = $lang->pm->lname;
$config->pm->logistics->search['fields']['expressID']         = $lang->pm->expressID;
$config->pm->logistics->search['fields']['projectID']         = $lang->pm->projectID;
$config->pm->logistics->search['fields']['senderID']          = $lang->pm->senderID;
$config->pm->logistics->search['fields']['receiver']          = $lang->pm->receiver;
$config->pm->logistics->search['fields']['confirmor']         = $lang->pm->confirmor;
$config->pm->logistics->search['fields']['sendaddress']       = $lang->pm->sendaddress;
$config->pm->logistics->search['fields']['receiveaddress']    = $lang->pm->receiveaddress;
$config->pm->logistics->search['fields']['sendtime']          = $lang->pm->sendtime;
$config->pm->logistics->search['fields']['receivetime']       = $lang->pm->receivetime;
$config->pm->logistics->search['fields']['status']            = $lang->pm->status;
$config->pm->logistics->search['fields']['content']           = $lang->pm->content;

$config->pm->logistics->search['params']['name']             = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->logistics->search['params']['expressID']         = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->pm->logistics->search['params']['projectID']         = array('operator' => '=',  'control' => 'select',  'values' => '', 'class' => 'form-control chosen');
$config->pm->logistics->search['params']['senderID']          = array('operator' => '=',  'control' => 'select',  'values' => '', 'class' => 'form-control chosen');
$config->pm->logistics->search['params']['receiver']          = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->logistics->search['params']['confirmor']         = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->logistics->search['params']['sendaddress']       = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->logistics->search['params']['receiveaddress']    = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->logistics->search['params']['sendtime']          = array('operator' => '=',  'control' => 'input',  'values' => '', 'class' => 'date');
$config->pm->logistics->search['params']['receivetime']       = array('operator' => '=',  'control' => 'input',  'values' => '', 'class' => 'date');
$config->pm->logistics->search['params']['status']            = array('operator' => '=',  'control' => 'input',  'values' => '');
$config->pm->logistics->search['params']['content']           = array('operator' => '=',  'control' => 'input',  'values' => '');
