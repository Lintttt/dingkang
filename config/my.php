<?php
$config->installed       = true;
$config->debug           = false;
$config->requestType     = 'PATH_INFO';
$config->db->host        = '127.0.0.1';
$config->db->port        = '3306';
$config->db->name        = 'dingkang';
$config->db->user        = 'root';
$config->db->password    = '';
$config->db->prefix      = 'dk_';
$config->webRoot         = getWebRoot();
$config->default->lang   = 'zh-cn';