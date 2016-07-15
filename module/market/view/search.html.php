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
      <strong><?php echo $lang->market->search;?></strong>
    </div>
  </div>
     <table align='center' class='table table-form'> 
      <tr>
          <th class="w-150px"><?php echo $lang->market->name.':';?></th>
        <td><?php echo $customers->name;?></td>      </tr>
     <tr>
        <th><?php echo $lang->market->sex.':';?></th>
        <td><?php echo $customers->sex;?></td>      </tr>
      <tr>
        <th><?php echo $lang->market->age.':';?></th>
        <td><?php echo $customers->age;?></td>      </tr>
      <tr>
        <th><?php echo $lang->market->unit.':';?></th>
        <td><?php echo $customers->unit;?></td>      </tr>
      <tr>
        <th><?php echo $lang->market->address.':';?></th>
        <td><?php echo $customers->address;?></td>      </tr>
      <tr>
        <th><?php echo $lang->market->telphone.':';?></th>
        <td><?php echo $customers->telphone;?></td>      </tr>
      <tr>
        <th><?php echo $lang->market->email.':';?></th>
        <td><?php echo $customers->email;?></td>      </tr>
      <tr>
        <th><?php echo $lang->market->type.':';?></th>
        <td><?php echo $customers->type;?></td>      </tr>
      <tr>
        <th><?php echo $lang->market->level.':';?></th>
        <td><?php echo $customers->level;?></td>      </tr>
     <tr>
        <th><?php echo $lang->market->potential_business.':';?></th>
        <td><?php echo $customers->potential_business;?></td>      </tr>
     <tr>
        <th><?php echo $lang->market->zone.':';?></th>
        <td><?php echo $customers->zone;?></td>      </tr>
      <tr>
        <th><?php echo $lang->market->saler.':';?></th>
        <td><?php echo $saler[$customers->saler];?></td>
      </tr>
    </table>
</div>



<?php include '../../common/view/footer.html.php';?>
