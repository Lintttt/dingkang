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


  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->pm->logistics;?></strong>
    </div>
      <div class="actions">
        <?php common::printIcon('pm', 'createlogistics', '', '', 'button');?>
    </div>
  </div>

<div id='querybox' class='show'><?php echo $searchForm?></div>

<div class='main'>
  <form class='' method='post' >
    <table class='table table-condensed table-hover table-striped tablesorter table-fixed' id='userList'>
       <thead>
    <tr class='colhead'>
      <?php $vars = "param=$param&orderBy=%s&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}";?> 
      <th class="w-id"><?php common::printorderlink('projectID',         $orderBy, $vars, $lang->pm->projectID);?></th>
      <th class="w-100px"><?php common::printOrderLink('lname',          $orderBy, $vars, $lang->pm->lname);?></th>
      <th class="w-100px"><?php common::printOrderLink('expressID',      $orderBy, $vars, $lang->pm->expressID);?></th>
      <th class="w-100px"><?php common::printOrderLink('senderID',       $orderBy, $vars, $lang->pm->senderID);?></th>
      <th class="w-100px"><?php common::printOrderLink('receiver',       $orderBy, $vars, $lang->pm->receiver);?></th>
      <th class="w-100px"><?php common::printOrderLink('confirmor',      $orderBy, $vars, $lang->pm->confirmor);?></th>
      <th class="w-100px"><?php common::printOrderLink('sendaddress',    $orderBy, $vars, $lang->pm->sendaddress);?></th>
      <th class="w-100px"><?php common::printOrderLink('receiveaddress', $orderBy, $vars, $lang->pm->receiveaddress);?></th>
      <th class="w-100px"><?php common::printOrderLink('sendtime', $orderBy, $vars, $lang->pm->sendtime);?></th>
      <th class="w-100px"><?php common::printOrderLink('receivetime', $orderBy, $vars, $lang->pm->receivetime);?></th>
      <th class="w-100px"><?php common::printOrderLink('status', $orderBy, $vars, $lang->pm->status);?></th>
      <th class="w-120px"><?php echo $lang->actions;?></th>
    </tr>
    </thead>
    
    <tbody>
    <?php foreach($logisticslist as $logistics):?>
    <tr class='text-center'>
        <td title="<?php echo $projectList[$logistics->projectID]?>"><?php echo $projectList[$logistics->projectID]?></td>
        <td title="<?php echo $logistics->name?>"><?php echo $logistics->name?></td>
        <td title="<?php echo $logistics->expressID?>"><?php echo $logistics->expressID?></td>
        <td><?php echo $logistics->senderID?></td>
        <td><?php echo $logistics->receiver?></td>
        <td><?php echo $logistics->confirmor?></td>
        <td title="<?php echo $logistics->sendaddress?>"><?php echo $logistics->sendaddress?></td>
        <td title="<?php echo $logistics->receiveaddress?>"><?php echo $logistics->receiveaddress?></td>
        <td><?php echo $logistics->sendtime?></td>
        <td><?php echo $logistics->receivetime?></td>
        <td><?php echo $logistics->status?></td>
        <td>
        <?php common::printLink('pm', 'editlogistics',   "ID=$logistics->id", '<i class="icon-edit"></i>', '', 'id="editPM" class="btn-icon iframe" data-width="580"', true, true);?>
        <?php common::printLink('pm', 'searchlogistics', "ID=$logistics->id", '<i class="icon-search"></i>', '', 'id="searchPM" class="btn-icon iframe" data-width="580"', true, true);?>
        <?php common::printLink('pm', 'deletelogistics', "ID=$logistics->id", '<i class="icon-remove"></i>', '', 'id="deletePM" class="btn-icon iframe" data-width="580"', true, true);?>
        </td>
    </tr>
    <?php endforeach;?>
    </tbody>
    <tfoot>
     <tr>
      <td colspan='12'>
      <?php echo $pager->show();?>
      </td>
    </tr>
    </tfoot>
    </table>
  </form>
</div>



<?php include '../../common/view/footer.html.php';?>
