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
      <strong><?php echo $lang->trial->delete;?></strong>
    </div>
  </div>
    <form style="text-align: center;margin-top: 10px;" method="post" action="">
        <h2>确定删除样品：<strong><label  name='name'><?php echo $trials->sampleinfo_name?></label></strong>?</h2>
        <input type="hidden" name="myself1" value="隐藏值">
        <?php echo html::submitButton('确定');?>
    </form>
</div>



<?php include '../../common/view/footer.html.php';?>
