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
      <strong><?php echo $lang->pm->searchpf;?></strong>
    </div>
  </div>
     <table align='center' class='table table-form'> 
      <tr>
        <th class="w-150px"><?php echo $lang->pm->pfID.':';?></th>
        <td><?php echo $pfs->customerID;?></td>      </tr>
     <tr>
        <th><?php echo $lang->pm->pfname.':';?></th>
        <td><?php echo $pfs->name;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->pfaddress.':';?></th>
        <td><?php echo $pfs->address;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->pfEmail.':';?></th>
        <td><?php echo $pfs->email;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->pfphone.':';?></th>
        <td><?php echo $pfs->telephone;?></td>      </tr>
    </table>
</div>



<?php include '../../common/view/footer.html.php';?>
