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
class market extends control
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
     * Index page, header to mycustomers.
     * 
     * @access public
     * @return void
     */
    public function index()
    {
       $this->locate($this->createLink('market', 'mycustomers'));
    }
    
    public function mycustomers($param = 0, $orderBy = 'customerID', $recTotal = 0, $recPerPage = 20, $pageID = 1) {
        $this->loadModel('search');

        /* Set the pager. */
        $this->app->loadClass('pager', $static = true);
        $pager = pager::init($recTotal, $recPerPage, $pageID);
        
        $this->config->market->mycustomers->search['actionURL'] = $this->createLink('market', 'mycustomers', "param=myQueryID");
        $this->config->market->mycustomers->search['queryID'] = $param;
        $this->loadModel('search')->setSearchParams($this->config->market->mycustomers->search);
        
        /* Get customers. */
        $condition=$param===0?'1':$this->session->marketQuery;
        print($this->session->marketQuery);
        print($condition);
        $customers = $this->market->getcustomers($pager,$orderBy,$condition);
        //$saler=$this->market->getsaler();
      //  print_r($saler);
        $this->view->searchForm  = $this->fetch('search', 'buildForm', $this->config->market->mycustomers->search);
        $this->view->orderBy     = $orderBy;
        $this->view->pager       = $pager;
        $this->view->param       = $param;
        $this->view->customers   = $customers;
        $this->view->title       = $this->lang->market->mycustomers;
        $this->view->position[]  = $this->lang->market->mycustomers;
        $this->view->saler       = $saler;
        $this->display();
    }
    
    public function create(){
        $salerList=  $this->market->getsalerList();
        if(!empty($_POST)){
            $this->market->createcustomer( );
            if(dao::isError()) 
           {
             print(js::error(dao::getError()));
             die(print(js::locate('back')));
           }
           else{
             print(js::alert('添加成功！'));
             die(print(js::locate($this->createLink('market', 'mycustomers'))));
           }
         }
        $this->view->title      =$this->lang->market->create;
        $this->view->position[] =$this->lang->market->create;
        $this->view->salerList  =$salerList;
        $this->display();
    }
    
    public function edit($ID){
        $salerList=  $this->market->getsalerList();
        if(!empty($_POST)){
            $this->market->update($ID);
            if(dao::isError()) 
           {
             print(js::error(dao::getError()));
             die(print(js::locate('back')));
           }
           else{
             print(js::alert('编辑成功！'));
             die(js::reload('parent.parent'));
           }
        }
        $this->view->salerList  =$salerList;
        $this->view->customers=$this->market->getOnecustomer($ID);
        $this->display();
    }
    
    public function delete($ID){
         
        if(!empty($_POST)){
            $this->market->delete($ID);
            die(js::reload('parent.parent'));
        }
        
        $this->view->customers=$this->market->getOnecustomer($ID);
        $this->display();
    }
    
    public function search($ID) {
        $saler=$this->market->getsaler();
        
        $this->view->saler       = $saler;
        $this->view->customers=$this->market->getOnecustomer($ID);
        $this->display();
    }

    
}