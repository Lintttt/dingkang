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
class trialModel extends model
{
    
 

    /**
     * Auto detect email config.
     * 
     * @param  string    $email 
     * @access public
     * @return object
     */
    public function getOnetrial($ID) {
     return $this->dao->select('*')
             ->from(TABLE_SAMPLE)
             ->where('spID')
             ->eq($ID)
             ->fetch();
    }
    
     public function gettrials($pager,$orderBy,$condition)
    {
        /* Get trial. */
        //print($condition);
       
        return $this->dao->select('*')->from(TABLE_SAMPLE)
                ->where($condition)
                ->orderBy($orderBy)
                ->page($pager)
                ->fetchAll();
    }           

    
    
    public function createtrial(){
            $trials  = fixer::input('post')->get();
            $length=count($trials->pj_id);
            for($i=0;$i<$length;$i++) {
                
                $trial->pj_id=$trials->pj_id[$i];
                $trial->customer=$trials->customer[$i];
                $trial->batch=$trials->batch[$i];
                $trial->get_date=$trials->get_date[$i];
                $trial->expressNum=$trials->expressNum[$i];
                $trial->sampleType=$trials->sampleType[$i];
                $trial->telphone=$trials->telphone[$i];
                $trial->sampleinfo_name=$trials->sampleinfo_name[$i];
                $trial->sampleinfo_sex=$trials->sampleinfo_sex[$i];
                $trial->sampleinfo_age=$trials->sampleinfo_age[$i];
                $trial->sampleinfo_history=$trials->sampleinfo_history[$i];
                $trial->position=$trials->position[$i];
                $trial->sampleinfo_id=$trials->sampleinfo_id[$i];
                $trial->recorder=$trials->recorder[$i];
                $trial->menu_id=$trials->menu_id[$i];
                $trial->back_address=$trials->back_address[$i];
                $trial->collect_date=$trials->collect_date[$i];
                $trial->cost=$trials->cost[$i];
                
                $this->dao->insert(TABLE_SAMPLE)
                     ->data($trial)
                     ->batchCheck($this->config->trial->create->requiredFields, 'notempty')
                     ->exec();
        }
    }
    
    public function update($ID) {
        $trial  = fixer::input('post')->get();  
        $this->dao->update(TABLE_SAMPLE)
            ->data($trial)
            ->where('spID')->eq($ID)
            ->exec();
    }
    
    public function delete($ID) {
        $this->dao->delete()
                ->from(TABLE_SAMPLE)
                ->where('spID')
                ->eq($ID)
                ->exec();
    }
    
 
}
