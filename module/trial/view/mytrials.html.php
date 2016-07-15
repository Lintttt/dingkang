<?php
/**
 * The index view file of mail module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpltrial.pub/page/zplv12.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     mail
 * @version     $Id$
 * @link        http://www.zentao.net
 */
include '../../common/view/header.html.php';

?>

<div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->trial->mytrials;?></strong>
    </div>
    <div class="actions">
        <?php common::printIcon('trial', 'create', '', '', 'button');?>
    </div>
  </div>



<div id='querybox' class='show'><?php echo $searchForm?></div>

<div class='main'>
<form action='' method='post'>
    <table class='table table-condensed table-hover table-striped tablesorter table-fixed' id=''>
    <thead>
    <tr class='colhead'>
      <?php $vars = "param=$param&orderBy=%s&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}";?> 
      <th class='w-id'><?php common::printorderlink('spID', $orderBy, $vars, $lang->trial->spID);?></th>
      <th ><?php common::printOrderLink('pj_id',  $orderBy, $vars, $lang->trial->pj_id);?></th>
      <th ><?php common::printOrderLink('customer',     $orderBy, $vars, $lang->trial->customer);?></th>
      <th ><?php common::printOrderLink('get_date',   $orderBy, $vars, $lang->trial->get_date);?></th>
      <th ><?php common::printOrderLink('expressNum',    $orderBy, $vars, $lang->trial->expressNum);?></th>
      <th ><?php common::printOrderLink('sampleType',   $orderBy, $vars,$lang->trial->sampleType);?></th>
      <th ><?php common::printOrderLink('telphone',     $orderBy, $vars, $lang->trial->telphone);?></th>
      <th ><?php common::printOrderLink('sampleinfo_name',     $orderBy, $vars, $lang->trial->sampleinfo_name);?></th>
      <th ><?php common::printOrderLink('sampleinfo_age',   $orderBy, $vars, $lang->trial->sampleinfo_age);?></th>
      <th ><?php common::printOrderLink('sampleinfo_history',   $orderBy, $vars, $lang->trial->sampleinfo_history);?></th>
      <th ><?php common::printOrderLink('position',   $orderBy, $vars, $lang->trial->position);?></th>
      <th ><?php common::printOrderLink('recorder',   $orderBy, $vars, $lang->trial->recorder);?></th>
      <th ><?php common::printOrderLink('back_address',   $orderBy, $vars, $lang->trial->back_address);?></th>
      <th ><?php common::printOrderLink('collect_date',   $orderBy, $vars, $lang->trial->collect_date);?></th>
      <th ><?php common::printOrderLink('cost',   $orderBy, $vars, $lang->trial->cost);?></th>
      <th ><?php echo $lang->actions;?></th>
    </tr>
    </thead>
    <tbody>
    
    <?php foreach($trials as $trial):?>
    <tr class='text-center'>
        <td><?php echo $trial->spID?></td>
        <td><?php echo $trial->pj_id?></td>
        <td><?php echo $trial->customer?></td>
        <td><?php echo $trial->get_date?></td>
        <td><?php echo $trial->expressNum?></td>
        <td><?php echo $trial->sampleType?></td>
        <td><?php echo $trial->telphone?></td>
        <td><?php echo $trial->sampleinfo_name?></td>
        <td><?php echo $trial->sampleinfo_age?></td>
        <td><?php echo $trial->sampleinfo_history?></td>
        <td><?php echo $trial->position?></td>
        <td><?php echo $trial->recorder?></td>
        <td><?php echo $trial->back_address?></td>
        <td><?php echo $trial->collect_date?></td>
        <td><?php echo $trial->cost?></td>
        <td>
        <?php common::printLink('trial', 'edit', "ID=$trial->spID", '<i class="icon-edit"></i>', '', 'id="editTrial" class="btn-icon iframe" data-width="580"', true, true);?>
        <?php common::printLink('trial', 'search', "ID=$trial->spID", '<i class="icon-search"></i>', '', 'id="searchTrial" class="btn-icon iframe" data-width="580"', true, true);?>
        <?php common::printLink('trial', 'delete', "ID=$trial->spID", '<i class="icon-remove"></i>', '', 'id="deleteTrial" class="btn-icon iframe" data-width="580"', true, true);?>
        </td>
    </tr>
    <?php endforeach;?>
    </tbody>
    <tfoot>
     <tr>
      <td colspan='16'>
      <?php echo $pager->show();?>
      </td>
    </tr>
    </tfoot>
  </table>
</form>
</div>

<?php include '../../common/view/footer.html.php';?>
