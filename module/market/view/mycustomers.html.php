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
      <strong><?php echo $lang->market->mycustomers;?></strong>
    </div>
    <div class="actions">
        <?php common::printIcon('market', 'create', '', '', 'button');?>
    </div>
  </div>

<div id='querybox' class='show'><?php echo $searchForm?></div>

<div class='main'>
<form action='' method='post'>
  <table class='table table-condensed table-hover table-striped tablesorter table-fixed' id='userList'>
    <thead>
    <tr class='colhead'>
      <?php $vars = "param=$param&orderBy=%s&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}";?> 
      <th class='w-id'><?php common::printorderlink('customerID', $orderBy, $vars, $lang->market->ID);?></th>
      <th class='w-id'><?php common::printOrderLink('name',  $orderBy, $vars, $lang->market->name);?></th>
      <th class='w-id'><?php common::printOrderLink('sex',     $orderBy, $vars, $lang->market->sex);?></th>
      <th class='w-id'><?php common::printOrderLink('age',    $orderBy, $vars, $lang->market->age);?></th>
      <th ><?php common::printOrderLink('unit',   $orderBy, $vars, $lang->market->unit);?></th>
      <th ><?php common::printOrderLink('address',    $orderBy, $vars, $lang->market->address);?></th>
      <th ><?php common::printOrderLink('telphone',   $orderBy, $vars,$lang->market->telphone);?></th>
      <th ><?php common::printOrderLink('email',     $orderBy, $vars, $lang->market->email);?></th>
      <th ><?php common::printOrderLink('type',     $orderBy, $vars, $lang->market->type);?></th>
      <th ><?php common::printOrderLink('level',   $orderBy, $vars, $lang->market->level);?></th>
      <th ><?php common::printOrderLink('potential_business',   $orderBy, $vars, $lang->market->potential_business);?></th>
      <th class='w-id'><?php common::printOrderLink('zone',   $orderBy, $vars, $lang->market->zone);?></th>
      <th class='w-id'><?php common::printOrderLink('saler',   $orderBy, $vars, $lang->market->saler);?></th>
      <th ><?php echo $lang->actions;?></th>
    </tr>
    </thead>
    <tbody>
    
   
    <?php foreach($customers as $customer):?>
    <tr class='text-center'>
        <td><?php echo $customer->customerID?></td>
        <td><?php echo $customer->name?></td>
        <td><?php echo $customer->sex?></td>
        <td><?php echo $customer->age?></td>
        <td><?php echo $customer->unit?></td>
        <td><?php echo $customer->address?></td>
        <td><?php echo $customer->telphone?></td>
        <td><?php echo $customer->email?></td>
        <td><?php echo $customer->type?></td>
        <td><?php echo $customer->level?></td>
        <td><?php echo $customer->potential_business?></td>
        <td><?php echo $customer->zone?></td>
        <td><?php echo $saler[$customer->saler]?></td>
        <td>
        <?php common::printLink('market', 'edit'  , "ID=$customer->customerID", '<i class="icon-edit"></i>'  , '', 'id="editMarket"   class="btn-icon iframe" data-width="580"', true, true);?>
        <?php common::printLink('market', 'search', "ID=$customer->customerID", '<i class="icon-search"></i>', '', 'id="searchMarket" class="btn-icon iframe" data-width="580"', true, true);?>
        <?php common::printLink('market', 'delete', "ID=$customer->customerID", '<i class="icon-remove"></i>', '', 'id="deleteMarket" class="btn-icon iframe" data-width="580"', true, true);?>
        </td>
    </tr>
    <?php endforeach;?>
    </tbody>
    <tfoot>
     <tr>
      <td colspan='14'>
      <?php echo $pager->show();?>
      </td>
    </tr>
    </tfoot>
  </table>
</form>
</div>

<?php include '../../common/view/footer.html.php';?>
