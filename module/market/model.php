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
class marketModel extends model
{
    
 

    /**
     * Auto detect email config.
     * 
     * @param  string    $email 
     * @access public
     * @return object
     */
    public function getsalerList() {
        $salers    = $this->dao->select('id, realname')->from(TABLE_USER)->fetchAll();
        $salerList = array('' => '');
        //print_r($salers);
        foreach($salers as $saler)
        {
            $salerList[$saler->id] = $saler->realname;
        }
        return $salerList;
       // print_r($salerList);
    }
    public function getsaler() {
        
         return  $this->dao->select('id,realname')
                     ->from(TABLE_USER)
                     ->fetchPairs('id','realname');
    }
    
    public function getOnecustomer($ID) {
     return $this->dao->select('*')
             ->from(TABLE_CUSTOMER)
             ->where('customerID')
             ->eq($ID)
             ->fetch();
    }
    
     public function getcustomers($pager,$orderBy,$condition)
    {
        /* Get customer. */
         //print('$condition');
        return $this->dao->select('*')->from(TABLE_CUSTOMER)
                ->where($condition)
                ->orderBy($orderBy)
                ->page($pager)
                ->fetchAll();
    }           

    
    
    public function createcustomer( ){
        $customer  = fixer::input('post')->get();  
        
        $this->dao->insert(TABLE_CUSTOMER)->data($customer)
                ->batchCheck($this->config->market->create->requiredFields, 'notempty')
                 ->exec();
    }
    
    public function update($ID) {
        $customer  = fixer::input('post')->get();  
        $this->dao->update(TABLE_CUSTOMER)
            ->data($customer)
            ->batchCheck($this->config->market->create->requiredFields, 'notempty')
            ->where('customerID')->eq($ID)
            
            ->exec();
    }
    
    public function delete($ID) {
        $this->dao->delete()
                ->from(TABLE_CUSTOMER)
                ->where('customerID')
                ->eq($ID)
                ->exec();
    }
    
 
}
