<?php include '../../common/view/header.html.php';?>

  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->pm->file_add;?></strong>
    </div>
     <div class="actions">
     </div>
  </div>
  
<div class='main'>
  <form method='post' id=''enctype="multipart/form-data">
    <table class='table  table-fixed' id=''>
      <tbody>
      <tr>
      <th><?php echo $lang->pm->file_upload; ?></th>
      <td><?php echo html::input('content','',"class='form-control' readonly='readonly'"); ?>
          <input type="file" name="btn_file" id="btn" style="display:none" onchange="file_change(this.value)" />
      </td>
      <td><button type="button" name="get_file" class='btn btn-back' onclick="btn_file.click();">浏览</button></td>
      </tr>
      <tr>
          <td></td>
          <td colspan="2">
          <?php echo html::submitButton()?>
          </td>
      </tr>
      </tbody>
    </table>
  </form>
</div>

<script>
     function file_change(e){
            document.getElementById('content').value = e;
             } 
   
</script>
<?php include '../../common/view/footer.html.php';?>

