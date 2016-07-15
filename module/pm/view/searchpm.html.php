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
      <strong><?php echo $lang->pm->searchpm;?></strong>
    </div>
  </div>
     <table align='center' class='table table-form'> 
      <tr>
        <th class="w-150px"><?php echo $lang->pm->projectID.':';?></th>
        <td><?php echo $pms->projectID;?></td>      </tr>
     <tr>
        <th><?php echo $lang->pm->pjname.':';?></th>
        <td><?php echo $pms->pjname;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->signtime.':';?></th>
        <td><?php echo $pms->signtime;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->contractmoney.':';?></th>
        <td><?php echo $pms->contractmoney;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->actualmoney.':';?></th>
        <td><?php echo $pms->actualmoney;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->invoicemoney.':';?></th>
        <td><?php echo $pms->invoicemoney;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->uninvoicemoney.':';?></th>
        <td><?php echo $pms->uninvoicemoney;?></td>      </tr>
      <tr>
        <th><?php echo $lang->pm->unreturedmoney.':';?></th>
        <td><?php echo $pms->unreturedmoney;?></td>      </tr>
     <tr>
        <th><?php echo $lang->pm->remark.':';?></th>
        <td><?php echo $pms->remark;?></td>      </tr>
    </table>
</div>



<?php include '../../common/view/footer.html.php';?>
