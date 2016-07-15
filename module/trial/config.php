<?php
$config->trial = new stdclass();
$config->trial->create = new stdclass();
$config->trial->edit   = new stdclass();
$config->trial->create->requiredFields = 'pj_id,customer';
$config->trial->edit->requiredFields   = 'pj_id,customer';

global $lang,$app;
$app->loadLang('trial');

$config->trial->mytrials = new stdClass();
$config->trial->mytrials->search['module'] = 'trial';
$config->trial->mytrials->search['fields']['pj_id']             = $lang->trial->pj_id;
$config->trial->mytrials->search['fields']['customer']          = $lang->trial->customer;
$config->trial->mytrials->search['fields']['get_date']          = $lang->trial->get_date;
$config->trial->mytrials->search['fields']['expressNum']        = $lang->trial->expressNum;
$config->trial->mytrials->search['fields']['sampleType']        = $lang->trial->sampleType;
$config->trial->mytrials->search['fields']['telphone']          = $lang->trial->telphone;
$config->trial->mytrials->search['fields']['sampleinfo_name']   = $lang->trial->sampleinfo_name;
$config->trial->mytrials->search['fields']['sampleinfo_sex']    = $lang->trial->sampleinfo_sex;
$config->trial->mytrials->search['fields']['sampleinfo_age']    = $lang->trial->sampleinfo_age;
$config->trial->mytrials->search['fields']['sampleinfo_history']= $lang->trial->sampleinfo_history;

$config->trial->mytrials->search['params']['pj_id']             = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->trial->mytrials->search['params']['customer']          = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->trial->mytrials->search['params']['get_date']          = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->trial->mytrials->search['params']['expressNum']        = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->trial->mytrials->search['params']['sampleType']        = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->trial->mytrials->search['params']['telphone']          = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->trial->mytrials->search['params']['sampleinfo_name']   = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->trial->mytrials->search['params']['sampleinfo_sex']    = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->trial->mytrials->search['params']['sampleinfo_age']    = array('operator' => 'include',  'control' => 'input',  'values' => '');
$config->trial->mytrials->search['params']['sampleinfo_history']= array('operator' => 'include',  'control' => 'input',  'values' => '');
