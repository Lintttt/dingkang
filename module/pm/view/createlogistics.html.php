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
include '../../common/view/chosen.html.php';
?>
<div id="titlebar">
    <div class="heading">
        <strong><?php echo $title; ?></strong>
    </div>
</div>

<div class="main">
    <form class="form-condensed" method="post" id="" target="hiddenwin" style="overflow-x: auto">
        <table class="table table-form table-fixed table-condensed">
            <thead>
                <tr>
                    <th class="w-40px"><?php echo 'ID'?></th>
                    <th class="w-120px"><?php echo $lang->pm->lname?><span class='required'></span></th>
                    <th class="w-120px"><?php echo $lang->pm->expressID?><span class='required'></span></th>
                    <th class="w-120px"><?php echo $lang->pm->projectID?><span class='required'></span></th>
                    <th class="w-120px"><?php echo $lang->pm->senderID?></th>
                    <th class="w-120px"><?php echo $lang->pm->receiver?></th>
                    <th class="w-120px"><?php echo $lang->pm->rphone?></th>
                    <th class="w-120px"><?php echo $lang->pm->confirmor?></th>
                    <th class="w-120px"><?php echo $lang->pm->cphone?></th>
                    <th class="w-120px"><?php echo $lang->pm->sendaddress?></th>
                    <th class="w-120px"><?php echo $lang->pm->receiveaddress?></th>
                    <th class="w-120px"><?php echo $lang->pm->sendtime?></th>
                    <th class="w-120px"><?php echo $lang->pm->receivetime?></th>
                    <th class="w-120px"><?php echo $lang->pm->status?></th>
                    <th class="w-120px"><?php echo $lang->pm->remark?></th>
                    <th class="w-120px"><?php echo $lang->pm->content?></th>
                    <th class="w-120px"><?php echo $lang->pm->confirmcontent?></th>
                </tr>
            </thead>
            <?php $projectList = array('' => '')+$projectList;?>
            <?php $userList = array('' => '')+$userList;?>
            <?php for($i=0;$i<10;$i++):?>
            <tbody>
            <tr class="text-center">
                <td><?php echo $i+1;?></td>
                    <td ><?php echo html::input("name[$i]",'',"class='form-control'")?></td>
                    <td ><?php echo html::input("expressID[$i]",'',"class='form-control'")?></td>
                    <td class='text-left' style='overflow: visible'><?php echo html::select("projectID[$i]", $projectList, '', "class='form-control chosen'")?></td>
                    <td ><?php echo html::input("senderID[$i]",'',"class='form-control'")?></td>
                    <td ><?php echo html::input("receiver[$i]", '', "class='form-control'  ")?></td>
                    <td ><?php echo html::input("rphone[$i]",'',"class='form-control'")?></td>
                    <td ><?php echo html::input("confirmor[$i]", '', "class='form-control'  ")?></td>
                    <td ><?php echo html::input("cphone[$i]",'',"class='form-control'")?></td>
                    <td ><?php echo html::input("sendaddress[$i]",'',"class='form-control'")?></td>
                    <td ><?php echo html::input("receiveaddress[$i]",'',"class='form-control'")?></td>
                    <td ><?php echo html::input("sendtime[$i]",'',"class='form-control form-date'")?></td>
                    <td ><?php echo html::input("receivetime[$i]",'',"class='form-control form-date'")?></td>
                    <td ><?php echo html::input("remark[$i]",'',"class='form-control'")?></td>
                    <td ><?php echo html::input("status[$i]",'',"class='form-control'")?></td>
                    <td ><?php echo html::input("content[$i]",'',"class='form-control'")?></td>
                    <td ><?php echo html::input("confirmcontent[$i]",'',"class='form-control'")?></td>
            </tr>
            <?php endfor;?>
            </tbody>
            <tfoot>
            <tr>
                <td colspan="12" class="text-center">
                   <?php echo html::submitButton() . html::backButton();?>
                </td>
            </tr>  
            </tfoot>
        </table>
    </form>
</div>

<!--<script>
    function getphone(obj){
        var id=obj.value;
        //$(obj).parentsUntil("tr").next().find("input").css({"color":"red","border":"2px solid red"});
        //$(obj).parentsUntil("tr").next().find("input").val();
        var url=createLink('pm','gettelephone','ID='+id);
        $.getJSON(url,function(result){
        $(obj).parentsUntil("tr").next().find("input").val(result);
        //alert(result);
        });
    }
</script>-->

<?php include '../../common/view/footer.html.php';?>
