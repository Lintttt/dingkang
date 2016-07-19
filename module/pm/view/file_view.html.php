<?php include '../../common/view/header.html.php';?>

  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->pm->file_view;?></strong>
    </div>
     <div class="actions">
     </div>
  </div>
  
<div class='main'>
  <form method='post' id='filelistsStoryForm'>
    <table class='table table-condensed table-hover table-striped tablesorter table-fixed' id='filelistsList'>
      <thead>
      <tr> 
      <?php $vars = "ID=$ID&orderBy=%s&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}";?>
        <th class='w-p15'> <?php common::printorderlink('pjID', $orderBy, $vars, $lang->pm->projectID);?></th>
        <th class='w-p45'> <?php common::printorderlink('type', $orderBy, $vars, $lang->pm->type);?></th>
        <th class='w-p100'> <?php common::printorderlink('name', $orderBy, $vars, $lang->pm->filename);?></th>
        <th class='w-p35'> <?php common::printorderlink('uploaddate', $orderBy, $vars, $lang->pm->uploaddate);?></th>
        <th class="w-120px"><?php echo $lang->actions;?></th>
      </tr>
      </thead>
      <tbody>
  <?php foreach($filelists as $filelist):?>
  <tr class='text-center'>
    <td class='text-center'><?php echo $pjID;?> </td>
    <td class='text-center'><?php echo $filelist->type;?></td>     
    <td class='text-center'><?php echo $filelist->name;?></td>
    <td class='text-center'><?php echo $filelist->uploaddate;?></td>
    <td>
      <?php echo html::a($this->createLink('pm', 'downloadfile', "path=$filelist->filepath&type=$filelist->type"." "), '<i class="icon-download"></i>', '', "title='下载文件' class='btn-icon'");?>
      <?php echo html::a($this->createLink('pm', 'readfile', "path=$filelist->filepath"." "), '<i class="icon-file"></i>', '_blank', "title='预览文件' class='btn-icon'");?>
      <?php echo html::a($this->createLink('', '', "pj_number=$pj_num&path=$dirpath"." "), '<i class="icon-envelope"></i>', '', "title='发送检测报告' class='btn-icon'");?>
      <?php echo html::a("#", '<i class="icon-remove"></i>', '', "title='删除文件' class='btn-icon' onclick='return delete_file($filelist->id)'");?>
  </td>
  </tr>
  <?php endforeach;?>
  </tbody>
  <tfoot>
    <tr>
      <td colspan='5'>
      <?php echo $pager->show();//$this->createLink('pm', 'filedelete', "fileID=$filelist->id&path=$filelist->filepath"." "),?>
      </td>
    </tr>
    </tfoot>
    </table>
  </form>
</div>

<script>
    function delete_file(ID){
        var id=ID;
        if(confirm("是否删除该文件？")){
            window.location.href=createLink('pm','filedelete','ID='+id);
        }
        else{
            return ;
        }
    }
</script>
<?php include '../../common/view/footer.html.php';?>

