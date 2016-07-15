<?php include '../../common/view/header.html.php';?>
<?php include '../../common/view/datepicker.html.php'; ?>

<div class='container mw-700px'>
  <div id='titlebar'>
    <div class='heading'>
      <strong><?php echo $lang->pm->editlogistics;?></strong>
    </div>
  </div>
  <form class='form form-condensed mw-700px' method='post' >
    <table align='center' class='table table-form table-condensed'> 
      <tr>
        <th><?php echo $lang->pm->projectID;?></th>
        <td><?php echo html::select('projectID', $projectList, "$logistics->projectID" ,"class='form-control chosen'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->lname;?></th>
        <td><?php echo html::input('name',"$logistics->name", "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->expressID;?></th>
        <td><?php echo html::input('expressID',  "$logistics->expressID", "class='form-control'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->senderID;?></th>
        <td><?php echo html::input('senderID',"$logistics->senderID", "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->receiver;?></th>
        <td><?php echo html::input('receiver', "$logistics->receiver",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->rphone;?></th>
        <td><?php echo html::input('rphone', "$logistics->rphone",  "class='form-control'");?></td>
      </tr>
     <tr>
        <th><?php echo $lang->pm->confirmor;?></th>
        <td><?php echo html::input('confirmor', "$logistics->confirmor",  "class='form-control'");?></td>
      </tr>
     <tr>
        <th><?php echo $lang->pm->cphone;?></th>
        <td><?php echo html::input('cphone', "$logistics->cphone",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->sendaddress;?></th>
        <td><?php echo html::input('sendaddress', "$logistics->sendaddress",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->receiveaddress;?></th>
        <td><?php echo html::input('receiveaddress', "$logistics->receiveaddress",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->sendtime;?></th>
        <td><?php echo html::input('sendtime', "$logistics->sendtime",  "class='form-control form-date'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->receivetime;?></th>
        <td><?php echo html::input('receivetime', "$logistics->receivetime",  "class='form-control form-date'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->remark;?></th>
        <td><?php echo html::input('remark', "$logistics->remark",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->status;?></th>
        <td><?php echo html::input('status', "$logistics->status",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->content;?></th>
        <td><?php echo html::textarea('content', "$logistics->content",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr>
        <th><?php echo $lang->pm->confirmcontent;?></th>
        <td><?php echo html::textarea('confirmcontent', "$logistics->confirmcontent",  "class='form-control' autocomplete='off'");?></td>
      </tr>
      <tr><th></th><td><?php echo html::submitButton();?></td></tr>
    </table>
  </form>
</div>


<?php include '../../common/view/footer.html.php';?>
