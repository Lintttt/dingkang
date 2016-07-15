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
      <strong><?php echo $lang->market->create;?></strong>
    </div>
  </div>
  <form class='form-condensed mw-700px' method='post' >
    <table align='center' class='table table-form'> 
      <tr>
        <th><?php echo $lang->market->name;?></th>
        <td><?php echo html::input('name', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->market->sex;?></th>
        <td><?php echo html::radio('sex', (array)$lang->market->sexList, '男');?></td>
      </tr>
      <tr>
        <th><?php echo $lang->market->age;?></th>
        <td><?php echo html::input('age', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->market->unit;?></th>
        <td><?php echo html::input('unit', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->market->address;?></th>
        <td><?php echo html::input('address', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->market->telphone;?></th>
        <td><?php echo html::input('telphone', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->market->email;?></th>
        <td><?php echo html::input('email', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->market->type;?></th>
        <td><?php echo html::input('type', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->market->level;?></th>
        <td><?php echo html::input('level', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
     <tr>
        <th><?php echo $lang->market->potential_business;?></th>
        <td><?php echo html::input('potential_business', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
     <tr>
        <th><?php echo $lang->market->zone;?></th>
        <td><?php echo html::input('zone', '', "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->market->saler;?></th>
        <td><?php echo html::select('saler', $salerList, '', "class='form-control chosen'");?></td>
        <td>这里为销售人</td>
      </tr>

      <tr><th></th><td><?php echo html::submitButton() . html::backButton();?></td></tr>
    </table>
  </form>
</div>



<?php include '../../common/view/footer.html.php';?>
