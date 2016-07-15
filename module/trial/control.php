<?php
/**
 * The control file of mail module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Yangyang Shi <shiyangyang@cnezsoft.com>
 * @package     mail
 * @version     $Id$
 * @link        http://www.zentao.net
 */
class trial extends control
{
    /**
     * Construct.
     * 
     * @access public
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Index page, header to mytrials.
     * 
     * @access public
     * @return void
     */
    public function index()
    {
       $this->locate($this->createLink('trial', 'mytrials'));
    }
    
    public function mytrials($param = 0, $orderBy = 'spID', $recTotal = 0, $recPerPage = 20, $pageID = 1) {
        $this->loadModel('search');

        /* Set the pager. */
        $this->app->loadClass('pager', $static = true);
        $pager = pager::init($recTotal, $recPerPage, $pageID);
       
        $this->config->trial->mytrials->search['actionURL'] = $this->createLink('trial', 'mytrials', "param=myQueryID");
        $this->config->trial->mytrials->search['queryID'] = $param;
        $this->loadModel('search')->setSearchParams($this->config->trial->mytrials->search);
        
        /* Get trials. */
        $condition=!$param?'1':$this->session->trialQuery;
       // print($condition);
        
        $trials = $this->trial->gettrials($pager,$orderBy,$condition);
        
        $this->view->searchForm  = $this->fetch('search', 'buildForm', $this->config->trial->mytrials->search);
        $this->view->orderBy     = $orderBy;
        $this->view->pager       = $pager;
        $this->view->param       = $param;
        $this->view->trials      = $trials;
        $this->view->title       = $this->lang->trial->mytrials ;
        $this->view->position[]  = $this->lang->trial->mytrials ;
        $this->display();
    }
    
    public function create(){
        if(!empty($_POST)){
             
            $this->trial->createtrial();
            if(dao::isError()) 
           {
             print(js::error(dao::getError()));
             die(print(js::locate('back')));
            }
           else{
             print(js::alert('添加成功！'));
             die(print(js::locate($this->createLink('trial', 'mytrials'))));
           }
             
         }
        $this->view->title       =$this->lang->trial->create ;
        $this->view->position[]  =$this->lang->trial->create ;
        
        $this->display();
    }
    
    public function edit($ID){
         
        if(!empty($_POST)){
            $this->trial->update($ID);
            die(js::reload('parent.parent'));
        }
        
         $this->view->trials=$this->trial->getOnetrial($ID);
         $this->display();
    }
    
    public function delete($ID){
         
        if(!empty($_POST)){
            $this->trial->delete($ID);
            die(js::reload('parent.parent'));
        }
        
         $this->view->trials=$this->trial->getOnetrial($ID);
         $this->display();
    }
    
    public function search($ID) {
        
        $this->view->trials=$this->trial->getOnetrial($ID);
        $this->display();
    }

    
}