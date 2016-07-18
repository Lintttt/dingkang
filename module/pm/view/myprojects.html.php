<?php
/**
 * The index view file of mail module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zplpm.pub/page/zplv12.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     mail
 * @version     $Id$
 * @link        http://www.zentao.net
 */
include '../../common/view/header.html.php';

?>

<div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->pm->mypms;?></strong>
    </div>
    <div class="actions">
        <?php common::printIcon('pm', 'createpm', '', '', 'button');?>
    </div>
  </div>



<div id='querybox' class='show'><?php echo $searchForm?></div>

<div class='main'>
<form action='' method='post'>
    <table class='table table-condensed table-hover table-striped tablesorter table-fixed' id='userList'>
    <thead>
    <tr class='colhead'>
      <?php $vars = "param=$param&orderBy=%s&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}";?> 
       <th class="w-id"><?php common::printorderlink('projectID', $orderBy, $vars, $lang->pm->projectID);?></th>
      <th class="w-120px"><?php common::printOrderLink('pjname',  $orderBy, $vars, $lang->pm->pjname);?></th>
      <th class="w-120px"><?php common::printOrderLink('signtime',    $orderBy, $vars, $lang->pm->signtime);?></th>
      <th class="w-120px"><?php common::printOrderLink('contractmoney',   $orderBy, $vars, $lang->pm->contractmoney);?></th>
      <th class="w-120px"><?php common::printOrderLink('actualmoney',    $orderBy, $vars, $lang->pm->actualmoney);?></th>
      <th class="w-120px"><?php common::printOrderLink('invoicemoney',   $orderBy, $vars,$lang->pm->invoicemoney);?></th>
      <th class="w-120px"><?php common::printOrderLink('uninvoicemoney',     $orderBy, $vars, $lang->pm->uninvoicemoney);?></th>
      <th class="w-120px"><?php common::printOrderLink('unreturedmoney',     $orderBy, $vars, $lang->pm->unreturedmoney);?></th>
      <th class="w-120px"><?php echo $lang->pm->contract;?></th>
      <th class="w-120px"><?php echo $lang->pm->remark;?></th>
      <th class="w-120px"><?php echo $lang->actions;?></th>
    </tr>
    </thead>
    
    <tbody>
    <?php foreach($pms as $pm):?>
    <tr class='text-center'>
        <td title="<?php echo $pm->projectID?>"><?php echo $pm->projectID?></td>
        <td title="<?php echo $pm->pjname?>"><?php echo $pm->pjname?></td>
        <td><?php echo $pm->signtime?></td>
        <td><?php echo $pm->contractmoney?></td>
        <td><?php echo $pm->actualmoney?></td>
        <td><?php echo $pm->invoicemoney?></td>
        <td><?php echo $pm->uninvoicemoney?></td>
        <td><?php echo $pm->unreturedmoney?></td>
        <td class='text-center'> 
           <?php
                if($this->pm->iffile($pm->id)){
                    common::printIcon('pm', 'file_add', "ID=$pm->id",'' , 'list', 'plus', '', 'iframe', 'yes',"data-width='600'");
                }
                else{
                    common::printIcon('pm', 'file_view', "ID=$pm->id", '', 'list ', 'file', '', 'iframe', 'yes', "data-width='900'");
                    common::printIcon('pm', 'file_add', "ID=$pm->id",'' , 'list', 'plus', '', 'iframe', 'yes',"data-width='600'");
                }
            ?>
        </td>
        <td title="<?php echo $pm->remark?>"><?php echo $pm->remark?></td>
        <td>
        <?php common::printLink('pm', 'editpm',   "ID=$pm->id", '<i class="icon-edit"></i>', '', 'id="editPM" class="btn-icon iframe" data-width="580"', true, true);?>
        <?php common::printLink('pm', 'searchpm', "ID=$pm->id", '<i class="icon-search"></i>', '', 'id="searchPM" class="btn-icon iframe" data-width="580"', true, true);?>
        <?php common::printLink('pm', 'deletepm', "ID=$pm->id", '<i class="icon-remove"></i>', '', 'id="deletePM" class="btn-icon iframe" data-width="580"', true, true);?>
        </td>
    </tr>
    <?php endforeach;?>
    </tbody>
    <tfoot>
     <tr>
      <td colspan='11'>
      <?php echo $pager->show();?>
      </td>
    </tr>
    </tfoot>
  </table>
</form>
</div>

<?php include '../../common/view/footer.html.php';?>
