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

  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->trial->create;?></strong>
    </div>
      <div class="actions">
        <button onclick="addRow()">添加一行</button>
    </div>
  </div>
   
  <div class='main'>
      <form action='' method='post' class="form-condensed">
    <table class='table table-condensed table-form'id='mytable'>
    <thead>
    <tr>
      <th ><?php echo $lang->trial->pj_id;?></th>
      <th ><?php echo $lang->trial->customer;?></th>
      <th ><?php echo $lang->trial->get_date;?></th>
      <th ><?php echo $lang->trial->expressNum;?></th>
      <th ><?php echo $lang->trial->sampleType;?></th>
      <th ><?php echo $lang->trial->telphone;?></th>
      <th ><?php echo $lang->trial->sampleinfo_name;?></th>
      <th ><?php echo $lang->trial->sampleinfo_sex;?></th>
      <th ><?php echo $lang->trial->sampleinfo_age;?></th>
      <th ><?php echo $lang->trial->sampleinfo_history;?></th>
      <th ><?php echo $lang->trial->position;?></th>
      <th ><?php echo $lang->trial->sampleinfo_id;?></th>
      <th ><?php echo $lang->trial->recorder;?></th>
      <th ><?php echo $lang->trial->menu_id;?></th>
      <th ><?php echo $lang->trial->back_address;?></th>
      <th ><?php echo $lang->trial->collect_date;?></th>
      <th ><?php echo $lang->trial->cost;?></th>
    </tr>
    </thead> 
    <tbody>
        <tr>
            <td><?php echo html::input('pj_id[]','',"class='form-control'")?></td>
            <td><?php echo html::input('customer[]','',"class='form-control'")?></td>
            <td><?php echo html::input('get_date[]','',"class='form-control form-date'")?></td>
            <td><?php echo html::input('expressNum[]','',"class='form-control'")?></td>
            <td><?php echo html::input('sampleType[]','',"class='form-control'")?></td>
            <td><?php echo html::input('telphone[]','',"class='form-control'")?></td>
            <td><?php echo html::input('sampleinfo_name[]','',"class='form-control'")?></td>
            <td><?php echo html::input('sampleinfo_sex[]','',"class='form-control'")?></td>
            <td><?php echo html::input('sampleinfo_age[]','',"class='form-control'")?></td>
            <td><?php echo html::input('sampleinfo_history[]','',"class='form-control'")?></td>
            <td><?php echo html::input('position[]','',"class='form-control'")?></td>
            <td><?php echo html::input('sampleinfo_id[]','',"class='form-control'")?></td>
            <td><?php echo html::input('recorder[]','',"class='form-control'")?></td>
            <td><?php echo html::input('menu_id[]','',"class='form-control'")?></td>
            <td><?php echo html::input('back_address[]','',"class='form-control'")?></td>
            <td><?php echo html::input('collect_date[]','',"class='form-control form-date'")?></td>
            <td><?php echo html::input('cost[]','',"class='form-control'")?></td>
        </tr>
    </tbody>
    <tfoot>
     <tr>
      <td colspan="20" class="w-250px">
     <?php echo html::submitButton()?>
      </td>
    </tr>
    </tfoot>
  </table>   
  </form>
  </div>

<script>
function addRow(){  
    $("#mytable").append("<?php  
     echo "<tr><td><input name='pj_id[]'class='form-control'></td>";
     echo "<td><input name='customer[]'class='form-control'></td>";
     echo "<td><input name='get_date[]' id='get_date[]' class='form-control form-date'></td>";
     echo "<td><input name='expressNum[]'class='form-control'></td>";
     echo "<td><input name='sampleType[]'class='form-control'></td>";
     echo "<td><input name='telphone[]'class='form-control'></td>";
     echo "<td><input name='sampleinfo_name[]'class='form-control'></td>";
     echo "<td><input name='sampleinfo_sex[]'class='form-control'></td>";
     echo "<td><input name='sampleinfo_age[]'class='form-control'></td>";
     echo "<td><input name='sampleinfo_history[]'class='form-control'></td>";
     echo "<td><input name='position[]'class='form-control'></td>";
     echo "<td><input name='sampleinfo_id[]'class='form-control'></td>";
     echo "<td><input name='recorder[]'class='form-control'></td>";
     echo "<td><input name='menu_id[]'class='form-control'></td>";
     echo "<td><input name='back_address[]'class='form-control'></td>";
     echo "<td><input name='collect_date[]'class='form-control form-date'></td>";
     echo "<td><input name='cost[]'class='form-control'></td></tr>";
    ?>");
            //初始化语句
            var options =
                {
                    language: 'zh-cn',
                    weekStart: 1,
                    todayBtn: 1,
                    autoclose: 1,
                    todayHighlight: 1,
                    startView: 2,
                    forceParse: 0,
                    showMeridian: 1,
                    format: 'yyyy-mm-dd hh:ii:00',
                    startDate: '1970-1-1'
                };
        //$('.form-date').datetimepicker(options);
        $('.form-date').datetimepicker($.extend(options, {minView: 2, format: 'yyyy-mm-dd'}));
}  
</script>

<?php include '../../common/view/footer.html.php';?>
