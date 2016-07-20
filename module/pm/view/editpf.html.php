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
include '../../common/view/datepicker.html.php';
?>


<div class='container mw-700px'>
  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->pm->editpf;?></strong>
    </div>
  </div>
  <form class='form-condensed mw-700px' method='post' >
    <table align='center' class='table table-form table-condensed'> 
      <tr>
        <th><?php echo $lang->pm->pfID;?></th>
        <td><?php echo html::input('customerID', "$pfs->customerID", "class='form-control'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->pfname;?></th>
        <td><?php echo html::input('name',"$pfs->name", "class='form-control'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->pfaddress;?></th>
        <td><?php echo html::input('address',"$pfs->address", "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->pfEmail;?></th>
        <td><?php echo html::input('email', "$pfs->email",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->pfphone;?></th>
        <td><?php echo html::input('telephone', "$pfs->telephone",  "class='form-control'");?></td>
      </tr>
      <tr><th></th><td><?php echo html::submitButton();?></td></tr>
    </table>
  </form>
</div>



<?php include '../../common/view/footer.html.php';?>
