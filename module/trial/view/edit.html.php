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


<div class='container mw-700px'>
  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->trial->edit;?></strong>
    </div>
  </div>
  <form class='form-condensed mw-700px' method='post' >
    <table align='center' class='table table-form'> 
      <tr>
        <th><?php echo $lang->trial->pj_id;?></th>
        <td><?php echo html::input('pj_id', "$trials->pj_id", "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->customer;?></th>
        <td><?php echo html::input('customer',"$trials->customer", "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->get_date;?></th>
        <td><input type="date" name="get_date" value="<?php echo $trials->get_date?>" class="form-control" autocomplete='off'></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->expressNum;?></th>
        <td><?php echo html::input('expressNum', "$trials->expressNum", "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->sampleType;?></th>
        <td><?php echo html::input('sampleType',"$trials->sampleType", "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->telphone;?></th>
        <td><?php echo html::input('telphone', "$trials->telphone",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->sampleinfo_name;?></th>
        <td><?php echo html::input('sampleinfo_name', "$trials->sampleinfo_name",  "class='form-control' autocomplete='off'");?></td>
      </tr>
     <tr>
        <th><?php echo $lang->trial->sampleinfo_sex;?></th>
        <td><?php echo html::input('sampleinfo_sex', "$trials->sampleinfo_sex",  "class='form-control' autocomplete='off'");?></td>
      </tr>
     <tr>
        <th><?php echo $lang->trial->sampleinfo_age;?></th>
        <td><?php echo html::input('sampleinfo_age', "$trials->sampleinfo_age",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->sampleinfo_history;?></th>
        <td><?php echo html::input('sampleinfo_history', "$trials->sampleinfo_history",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->position;?></th>
        <td><?php echo html::input('position', "$trials->position",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->sampleinfo_id;?></th>
        <td><?php echo html::input('sampleinfo_id', "$trials->sampleinfo_id",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->recorder;?></th>
        <td><?php echo html::input('recorder', "$trials->recorder",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->menu_id;?></th>
        <td><?php echo html::input('menu_id', "$trials->menu_id",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->back_address;?></th>
        <td><?php echo html::input('back_address', "$trials->back_address",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->collect_date;?></th>
        <td><input type="date" name="collect_date" value="<?php echo $trials->collect_date?>" class="form-control" autocomplete='off'></td>
      </tr>
      <tr>
        <th><?php echo $lang->trial->cost;?></th>
        <td><?php echo html::input('cost', "$trials->cost",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr><th></th><td><?php echo html::submitButton();?></td></tr>
    </table>
  </form>
</div>



<?php include '../../common/view/footer.html.php';?>
