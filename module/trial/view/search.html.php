<?php
/**
 * The index view file of mail module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     mail
 * @version     $Id$
 * @link        http://www.zentao.net
 */
include '../../common/view/header.html.php';
?>


<div class='container'>
  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->trial->search;?></strong>
    </div>
  </div>
     <table align='center' class='table table-form'> 
      <tr>
        <th class="w-150px"><?php echo $lang->trial->spID.':';?></th>
        <td><?php echo $trials->spID;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->pj_id.':';?></th>
        <td><?php echo $trials->pj_id;?></td>      </tr>
      <tr>
        <th><?php echo $lang->trial->customer.':';?></th>
        <td><?php echo $trials->customer;?></td>      </tr>
      <tr>
        <th><?php echo $lang->trial->get_date.':';?></th>
        <td><?php echo $trials->get_date;?></td>      </tr>
      <tr>
        <th><?php echo $lang->trial->expressNum.':';?></th>
        <td><?php echo $trials->expressNum;?></td>      </tr>
      <tr>
        <th><?php echo $lang->trial->sampleType.':';?></th>
        <td><?php echo $trials->sampleType;?></td>      </tr>
      <tr>
        <th><?php echo $lang->trial->telphone.':';?></th>
        <td><?php echo $trials->telphone;?></td>      </tr>
      <tr>
        <th><?php echo $lang->trial->sampleinfo_name.':';?></th>
        <td><?php echo $trials->sampleinfo_name;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->sampleinfo_sex.':';?></th>
        <td><?php echo $trials->sampleinfo_sex;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->sampleinfo_age.':';?></th>
        <td><?php echo $trials->sampleinfo_age;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->sampleinfo_history.':';?></th>
        <td><?php echo $trials->sampleinfo_history;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->position.':';?></th>
        <td><?php echo $trials->position;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->sampleinfo_id.':';?></th>
        <td><?php echo $trials->sampleinfo_id;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->recorder.':';?></th>
        <td><?php echo $trials->recorder;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->menu_id.':';?></th>
        <td><?php echo $trials->menu_id;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->back_address.':';?></th>
        <td><?php echo $trials->back_address;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->collect_date.':';?></th>
        <td><?php echo $trials->collect_date;?></td>      </tr>
     <tr>
        <th><?php echo $lang->trial->cost.':';?></th>
        <td><?php echo $trials->cost;?></td>      </tr>
    </table>
</div>



<?php include '../../common/view/footer.html.php';?>
