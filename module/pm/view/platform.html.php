<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include '../../common/view/header.html.php';
?>

<div id="titlebar">
    <div class="heading">
        <strong><?php echo $lang->pm->myplatform; ?></strong>
    </div>
    <div class="actions">
        <?php common::printIcon('pm', 'createpf', '', '', 'button'); ?>
    </div>
</div>

<div id="querybox" class="show">
    <?php echo $searchForm ?>
</div>

<div class="main">
    <form class="" method="post">
        <table class='table table-condensed table-hover table-striped tablesorter table-fixed'>
            <thead>
                <tr class="colhead">
                    <?php $vars = "param=$param&orderBy=%s&recTotal={$pager->recTotal}&recPerPage={$pager->recPerPage}"; ?> 
                    <th class="w-id"><?php common::printOrderLink('pfID', $orderBy, $vars, $lang->pm->pfID)?></th>
                    <th class="w-150px"><?php common::printOrderLink('pfname', $orderBy, $vars, $lang->pm->pfname)?></th>
                    <th class="w-150px"><?php common::printOrderLink('pfaddress', $orderBy, $vars, $lang->pm->pfaddress)?></th>
                    <th class="w-150px"><?php common::printOrderLink('pfEmail', $orderBy, $vars, $lang->pm->pfEmail)?></th>
                    <th class="w-150px"><?php common::printOrderLink('pfphone', $orderBy, $vars, $lang->pm->pfphone)?></th>      
                    <th class="w-150px"><?php echo $lang->actions;?></th>
                </tr>
            </thead>
            
            <tbody>
                <?php foreach($pfs as $pf): ?>
                <tr class='text-center'>
                    <td title="<?php echo $pf->customerID ?>"><?php echo $pf->customerID ?></td>
                    <td><?php echo $pf->name ?></td>
                    <td><?php echo $pf->address ?></td>
                    <td><?php echo $pf->email ?></td>
                    <td><?php echo $pf->telephone ?></td>
                    <td>
                        <?php common::printLink('pm', 'editpf', "ID=$pf->customerID", '<i class="icon-edit"></i>', '', 'id="editPF" class="btn-icon iframe" data-width="580"', true, true); ?>
                        <?php common::printLink('pm', 'searchpf', "ID=$pf->customerID", '<i class="icon-search"></i>', '', 'id="searchPF" class="btn-icon iframe" data-width="580"', true, true); ?>
                        <?php common::printLink('pm', 'deletepf', "ID=$pf->customerID", '<i class="icon-remove"></i>', '', 'id="deletePF" class="btn-icon iframe" data-width="580"', true, true); ?>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan='6'>
                        <?php echo $pager->show(); ?>
                    </td>
                </tr>
            </tfoot>
        </table>
    </form>
</div>


<?php include '../../common/view/footer.html.php'; ?>
