<?php
/**
 * The model file of mail module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     mail
 * @version     $Id: model.php 4750 2013-05-05 00:22:53Z chencongzhi520@gmail.com $
 * @link        http://www.zentao.net
 */
?>
<?php
class pmModel extends model
{
    
 

    /**
     * Auto detect email config.
     * 
     * @param  string    $email 
     * @access public
     * @return object
     */
    public function getUser() {
        return $this->dao->select('*')
                ->from(TABLE_USER)
                ->fetchAll();
    }
    
    public function getProjectAll() {
         return  $this->dao->select('*')
                     ->from(TABLE_PROJECT)
                     ->fetchAll();
    }
    
    public function getById($ID) {
        //echo($ID);
        return $this->dao->select('projectID')
                ->from(TABLE_PROJECT)
                ->where('id')
                ->eq($ID)
                ->fetch();
    }
    
    public function getFile($ID,$orderBy,$pager) {
         return  $this->dao->select('*')->from(TABLE_FILE)
                     ->where('pjID')
                     ->eq($ID)
                     ->orderBy($orderBy)
                     ->page($pager)
                     ->fetchAll();
    }
    
    public function getOnepm($ID) {
        return $this->dao->select('*')
             ->from(TABLE_PROJECT)
             ->where('id')
             ->eq($ID)
             ->fetch();
    }
    
     public function getpms($pager,$orderBy,$condition)
    {   
//         print("$this->dao->select('*')->from(TABLE_PROJECT)
//                            ->where($condition)
//                            ->orderBy($orderBy)
//                            ->page($pager)
//                            ->fetchAll()");
        return  $this->dao->select('*')->from(TABLE_PROJECT)
                            ->where($condition)
                            ->orderBy($orderBy)
                            ->page($pager)
                            ->fetchAll();
    }   
    
    public function getonelogistics($ID) {
        return $this->dao->select('*')
             ->from(TABLE_LOGISTICS)
             ->where('id')
             ->eq($ID)
             ->fetch();
    }
    
  public function getlogistics($pager,$orderBy,$condition)
    { 
//        print("$this->dao->select('*')->from(TABLE_LOGISTICS)
//                            ->where($condition)
//                            ->orderBy($orderBy)
//                            ->page($pager)
//                            ->fetchAll()");
         return  $this->dao->select('*')->from(TABLE_LOGISTICS)
                            ->where($condition)
                            ->orderBy($orderBy)
                            ->page($pager)
                            ->fetchAll();
    }   
    
    public function createpm(){
        $pm  = fixer::input('post')->get();  
        //$pm->creator=$this->app->user->id;
        $this->dao->insert(TABLE_PROJECT)->data($pm)
                ->batchCheck($this->config->pm->createpm->requiredFields,'notempty')
                 ->exec();
    }
    
    public function createlogistics() {
        $logisticsList=  fixer::input('post')->get();
        $data  = array();
        
        for($i=0;$i<10;$i++){
            if($logisticsList->projectID[$i]!=''){
                
                $data[$i] = new stdclass();
                $data[$i]->projectID           = $logisticsList->projectID[$i];
                $data[$i]->name                = $logisticsList->name[$i]; 
                $data[$i]->expressID           = $logisticsList->expressID[$i];
                $data[$i]->projectID           = $logisticsList->projectID[$i];
                $data[$i]->senderID            = $logisticsList->senderID[$i];
                $data[$i]->receiver            = $logisticsList->receiver[$i];
                $data[$i]->rphone              = $logisticsList->rphone[$i];
                $data[$i]->confirmor           = $logisticsList->confirmor[$i];
                $data[$i]->cphone              = $logisticsList->cphone[$i];
                $data[$i]->sendaddress         = $logisticsList->sendaddress[$i];
                $data[$i]->receiveaddress      = $logisticsList->receiveaddress[$i];
                $data[$i]->sendtime            = $logisticsList->sendtime[$i];
                $data[$i]->receivetime         = $logisticsList->receivetime[$i];
                $data[$i]->remark              = $logisticsList->remark[$i];
                $data[$i]->status              = $logisticsList->status[$i];
                $data[$i]->content             = $logisticsList->content[$i];
                $data[$i]->confirmcontent      = $logisticsList->confirmcontent[$i];
            }
        }
        
        foreach($data as $logistics){
            $this->dao->insert(TABLE_LOGISTICS)->data($logistics)
                   // ->autoCheck()
                    ->batchCheck($this->config->pm->createlogistics->requiredFields,'notempty')
                    ->exec();
        }
    }
    
    public function updatepm($ID) {
        $pm  = fixer::input('post')->get();  
        $this->dao->update(TABLE_PROJECT)->data($pm)
            ->autoCheck()
            ->batchCheck($this->config->pm->editpm->requiredFields,'notempty')
            ->where('id')->eq($ID)
            ->exec();
    }  
    
    public function updatelogistics($ID) {
        $log  = fixer::input('post')->get();  
        $this->dao->update(TABLE_LOGISTICS)->data($log)
            ->autoCheck()
            ->batchCheck($this->config->pm->editlogistics->requiredFields,'notempty')
            ->where('id')->eq($ID)
            ->exec();
    }
    
    public function delete($ID) {
        $this->dao->delete()
                ->from(TABLE_PROJECT)
                ->where('id')
                ->eq($ID)
                ->exec();
    }
    
    public function deletelogistics($ID) {
        $this->dao->delete()
                ->from(TABLE_LOGISTICS)
                ->where('id')
                ->eq($ID)
                ->exec();
    }
    
    public function deletefile($fileID,$path) {
        return $this->dao->delete()->from(TABLE_FILE)->where('id')->eq($fileID)->exec();
    }
    
    public function addfile($ID,$type,$filename) {
        $time = date('Y-m-d H:i:s');
        
        $addfile ->uploaddate=$time;
        $addfile ->pjID= $ID;
        $addfile ->filepath=$_SESSION[pathpic];
        $addfile ->version= '1.0';
        $addfile ->type= $type;
        $addfile ->name= $filename;
       // print_r($addfile);
        
        return $this->dao->insert(TABLE_FILE)->data($addfile)->exec();
    }
    
    public function iffile($ID) {
        if(empty($this->dao->select('*')->from(TABLE_FILE)->where('pjID')->eq($ID)->fetch())){
            return true;
        }
        else {
            return FALSE;
        }
    }
    
    function get_basename($filename){  
        return preg_replace('/^.+[\\\\\\/]/', '', $filename);  
    }  
 
}
