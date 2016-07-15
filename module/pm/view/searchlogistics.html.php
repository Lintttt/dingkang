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
      <strong><?php echo $lang->pm->searchlogistics;?></strong>
    </div>
  </div>
     <table align='center' class='table table-form'> 
      <tr>
        <th class="w-150px"><?php echo $lang->pm->projectID.':';?></th>
        <td><?php echo $projectList[$logistics->projectID];?></td>      </tr>
     <tr>
        <th><?php echo $lang->pm->lname.':';?></th>
        <td><?php echo $logistics->name;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->expressID.':';?></th>
        <td><?php echo $logistics->expressID;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->senderID.':';?></th>
        <td><?php echo $logistics->senderID;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->receiver.':';?></th>
        <td><?php echo $logistics->receiver;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->rphone.':';?></th>
        <td><?php echo $logistics->rphone;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->confirmor.':';?></th>
        <td><?php echo $logistics->confirmor;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->cphone.':';?></th>
        <td><?php echo $logistics->cphone;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->sendaddress.':';?></th>
        <td><?php echo $logistics->sendaddress;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->receiveaddress.':';?></th>
        <td><?php echo $logistics->receiveaddress;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->sendtime.':';?></th>
        <td><?php echo $logistics->sendtime;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->receivetime.':';?></th>
        <td><?php echo $logistics->receivetime;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->status.':';?></th>
        <td><?php echo $logistics->status;?></td>      </tr>
     <tr>
        <th><?php echo $lang->pm->remark.':';?></th>
        <td><?php echo $logistics->remark;?></td>      </tr>
     <tr>
        <th><?php echo $lang->pm->content.':';?></th>
        <td><?php echo $logistics->content;?></td>      </tr>
     <tr>
        <th><?php echo $lang->pm->confirmcontent.':';?></th>
        <td><?php echo $logistics->confirmcontent;?></td>      </tr>
    </table>
</div>



<?php include '../../common/view/footer.html.php';?>
