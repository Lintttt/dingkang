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
      <strong><?php echo $lang->pm->editpm;?></strong>
    </div>
  </div>
  <form class='form-condensed mw-700px' method='post' >
    <table align='center' class='table table-form table-condensed'> 
      <tr>
        <th><?php echo $lang->pm->projectID;?></th>
        <td><?php echo html::input('projectID', "$pms->projectID", "class='form-control'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->pjname;?></th>
        <td><?php echo html::input('pjname',"$pms->pjname", "class='form-control'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->signtime;?></th>
        <td><?php echo html::input('signtime',  "$pms->signtime", "class='form-control form-date'autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->contractmoney;?></th>
        <td><?php echo html::input('contractmoney',"$pms->contractmoney", "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->actualmoney;?></th>
        <td><?php echo html::input('actualmoney', "$pms->actualmoney",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->invoicemoney;?></th>
        <td><?php echo html::input('invoicemoney', "$pms->invoicemoney",  "class='form-control'");?></td>
      </tr>
     <tr>
        <th><?php echo $lang->pm->uninvoicemoney;?></th>
        <td><?php echo html::input('uninvoicemoney', "$pms->uninvoicemoney",  "class='form-control'");?></td>
      </tr>
     <tr>
        <th><?php echo $lang->pm->unreturedmoney;?></th>
        <td><?php echo html::input('unreturedmoney', "$pms->unreturedmoney",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->remark;?></th>
        <td><?php echo html::textarea('remark', "$pms->remark",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr><th></th><td><?php echo html::submitButton();?></td></tr>
    </table>
  </form>
</div>



<?php include '../../common/view/footer.html.php';?>
