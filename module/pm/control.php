<?php

/**
 * The control file of pm module
 * @author   LinTing
 * @package  pm
 *      
 */
class pm extends control {

    /**
     * Construct.
     * 
     * @access public
     * @return void
     */
    public function __construct() {
        parent::__construct();
        $this->loadModel('file');
    }

    /**
     * Index page, header to myprojects.
     * 
     * @access public
     * @return void
     */
    public function index() {
        //locate myprojects
        $this->locate($this->createLink('pm', 'myprojects'));
    }

    public function myprojects($param = 0, $orderBy = 'projectID', $recTotal = 0, $recPerPage = 20, $pageID = 1) {
        $this->loadModel('search');
        /* Set the pager. */
        $this->app->loadClass('pager', $static                                                                = true);
        $pager                                                                 = pager::init($recTotal, $recPerPage, $pageID);
        //get projectList('id' => 'projectID')
        $projectList                                                           = $this->pm->getProject();
        //Set the search 
        $this->config->pm->myprojects->search['actionURL']                     = $this->createLink('pm', 'myprojects', "param=myQueryID");
        $this->config->pm->myprojects->search['queryID']                       = $param;
        $this->config->pm->myprojects->search['params']['projectID']['values'] = $projectList;
        $this->loadModel('search')->setSearchParams($this->config->pm->myprojects->search);

        $condition = !$param ? '1' : $this->session->pmQuery;
        // print($this->session->pmQuery);
        /* Get pms. */
        $pms       = $this->pm->getpms($pager, $orderBy, $condition);

        $this->view->searchForm = $this->fetch('search', 'buildForm', $this->config->pm->myprojects->search);
        $this->session->set('pmForm', '');
        $this->view->orderBy    = $orderBy;
        $this->view->pager      = $pager;
        $this->view->param      = $param;
        $this->view->pms        = $pms;
        $this->view->title      = $this->lang->pm->myprojects;
        $this->view->position[] = $this->lang->pm->mypms;
        $this->display();
    }

    public function createpm() {
        //if have a POST
        if (!empty($_POST)) {
            //connet Mysql and insert into table project
            $this->pm->createpm();
            //to judge error
            if (dao::isError()) {
                print(js::error(dao::getError()));
                die(print(js::locate('back'))); //back to the previous page
            }
            else {
                print(js::alert('添加成功！'));
                die(print(js::locate($this->createLink('pm', 'myprojects'))));
            }
        }
        
        $this->view->title      = $this->lang->pm->createpm;
        $this->view->position[] = $this->lang->pm->createpm;
        $this->display();
    }

    public function editpm($ID) {
        //if have a POST
        if (!empty($_POST)) {
            //connet Mysql and update table project
            $this->pm->updatepm($ID);
            //to judge error
            if (dao::isError()) {
                print(js::error(dao::getError()));
                die(print(js::locate('back'))); //back to the previous page
            }
            else {
                print(js::alert('编辑成功！'));
                die(js::reload('parent.parent'));
            }
        }

        $this->view->pms = $this->pm->getOnepm($ID);
        $this->display();
    }

    public function deletepm($ID) {

        if (!empty($_POST)) {
            $this->pm->delete($ID);
            die(js::reload('parent.parent'));
        }

        $this->view->pms = $this->pm->getOnepm($ID);
        $this->display();
    }

    public function searchpm($ID) {

        $this->view->pms = $this->pm->getOnepm($ID);
        $this->display();
    }

    public function file_view($ID, $orderBy = 'uploaddate', $recTotal = 0, $recPerPage = 20, $pageID = 1) {

        /* Set the pager. */
        $this->app->loadClass('pager', $static    = true);
        $pager     = pager::init($recTotal, $recPerPage, $pageID);
        $pjID      = $this->pm->getById($ID);
        $filelists = $this->pm->getFile($ID, $orderBy, $pager);

        $this->view->title      = $this->lang->pm->file_view;
        $this->view->position[] = $this->lang->pm->file_view;
        $this->view->pjID       = $pjID->projectID;
        $this->view->filelists  = $filelists;
        $this->view->orderBy    = $orderBy;
        $this->view->pager      = $pager;
        $this->view->ID         = $ID;
        $this->display();
    }

    public function file_add($ID) {
        if ($_POST) {

            if ($this->post->content != '') {
                $file              = $this->file->getUpload('btn_file');
                $file              = $file[0];
                //print_r($_FILES['btn_file']['name']);
                $filename          = $this->pm->get_basename($_FILES['btn_file']['name']);
                $path              = $this->file->savePath . $file['pathname'] . $filename;
                $tmparr            = split('[/]', $path);
                $arrnum            = count($tmparr);
                //print_r($path);
                $_SESSION[pathpic] = $tmparr[$arrnum - 3] . '/' . $tmparr[$arrnum - 2] . '/' . $tmparr[$arrnum - 1];

                $path = iconv('utf-8', 'gbk', $path);
                if (!move_uploaded_file($file['tmpname'], $path)) {
                    die(js::alert('文件上传失败，请重新上传'));
                }
            }
            $type = $_FILES['btn_file']['type'];
            $add  = $this->pm->addfile($ID, $type, $filename);
            if (dao::isError())
                die(js::error(dao::getError()));
            else {
                print(js::alert('操作成功'));
                die(js::reload('parent.parent'));
            }
        }
        $this->display();
    }

    public function downloadfile($path, $type) {

        $filepath = $this->app->getAppRoot() . $this->lang->uploadDir . iconv('utf-8', 'gbk', $path);    //要下载的文件名

        if (file_exists($filepath)) {
            header("Content-Type:" . $type);
            header("Content-Disposition:attachment;filename=" . basename($filepath));
            header("Content-Length:" . filesize($filepath));

            readfile($filepath);
        }
        else {
            die(js::alert('文件该文件不存在'));
        }
    }

    public function filedelete($fileID, $path) {

        $this->pm->deletefile($fileID, $path);
        if (dao::isError())
            die(js::error(dao::getError()));
        else {
            print(js::alert('删除成功！'));
            die(js::reload('parent.parent'));
        }
    }

    public function logistics($param = 0, $orderBy = 'projectID', $recTotal = 0, $recPerPage = 20, $pageID = 1) {
        $this->loadModel('search');
        /* Set the pager. */
        $this->app->loadClass('pager', $static = true);
        $pager  = pager::init($recTotal, $recPerPage, $pageID);

        $projectAll = $this->pm->getProjectAll();
        foreach ($projectAll as $v) {
            $projectList[$v->id] = $v->projectID;
        }
        //$userList=  $this->pm->getUser();
        // print_r($projectList);
        $this->config->pm->logistics->search['actionURL']                     = $this->createLink('pm', 'logistics', "param=myQueryID");
        $this->config->pm->logistics->search['queryID']                       = $param;
        $this->config->pm->logistics->search['params']['projectID']['values'] = $projectList;
        //$this->config->pm->logistics->search['params']['senderID']['values'] = $userList;
        $this->loadModel('search')->setSearchParams($this->config->pm->logistics->search);

        /* Get pms. */
        $condition = !$param ? '1' : $this->session->pmQuery;
        //print($this->session->pmQuery);

        $logisticslist = $this->pm->getlogistics($pager, $orderBy, $condition);


        $this->view->searchForm    = $this->fetch('search', 'buildForm', $this->config->pm->logistics->search);
        $this->session->set('pmForm', '');
        $this->view->orderBy       = $orderBy;
        $this->view->pager         = $pager;
        $this->view->param         = $param;
        $this->view->logisticslist = $logisticslist;
        $this->view->projectList   = $projectList;
        $this->view->title         = $this->lang->pm->logistics;
        $this->view->position[]    = $this->lang->pm->logistics;
        $this->display();
    }

    public function createlogistics() {
        if (!empty($_POST)) {
            $this->pm->createlogistics();
            if (dao::isError()) {
                die(print(js::error(dao::getError())));
            }
            else {
                die(print(js::locate($this->createLink('pm', 'logistics'), 'parent')));
            }
        }
        $projectList = $this->pm->getProject();

        $this->view->projectList = $projectList;
        $this->view->title       = $this->lang->pm->createlogistics;
        $this->view->position[]  = $this->lang->pm->createlogistics;
        $this->display();
    }

    public function editlogistics($ID) {
        if (!empty($_POST)) {
            $this->pm->updatelogistics($ID);
            if (dao::isError()) {
                print(js::error(dao::getError()));
                die(print(js::locate('back')));
            }
            else {
                print(js::alert('编辑成功！'));
                die(js::reload('parent.parent'));
            }
        }

        $projectList = $this->pm->getProject();

        $this->view->projectList = $projectList;
        $this->view->title       = $this->lang->pm->editlogistics;
        $this->view->position[]  = $this->lang->pm->editlogistics;
        $this->view->logistics   = $this->pm->getonelogistics($ID);
        $this->display();
    }

    public function searchlogistics($ID) {
        $projectList = $this->pm->getProject();
        $logistics   = $this->pm->getonelogistics($ID);

        $this->view->projectList = $projectList;
        $this->view->logistics   = $logistics;
        $this->view->title       = $this->lang->pm->searchlogistics;
        $this->view->position[]  = $this->lang->pm->searchlogistics;
        $this->display();
    }

    public function deletelogistics($ID) {

        if (!empty($_POST)) {
            $this->pm->deletelogistics($ID);
            die(js::reload('parent.parent'));
        }

        $this->view->logistics  = $this->pm->getOnelogistics($ID);
        $this->view->title      = $this->lang->pm->searchlogistics;
        $this->view->position[] = $this->lang->pm->searchlogistics;
        $this->display();
    }

}
