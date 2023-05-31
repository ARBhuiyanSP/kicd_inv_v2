<!-- Modal -->
<div class="modal fade" id="level3_added_form" role="dialog">
    <form id="leve3_added_form_valuex">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header modal_header_custom_background">
                    <h4 class="modal-title">Level 3 add</h4>
                </div>
                <div class="modal-body modal_body_custom_background">
                    <div class="modal_body_centerize">
                        <div class="form-group">
                            <label class="control-label col-sm-5" for="parent_code">Level-1:</label>
                            <div class="col-sm-7">
                                <select class="form-control" id="main_item_id" name="category_id" onchange="getSubCategoryByParent(this.value);">
                                    <option value="">Select</option>
                                    <?php
                                    $parentCats = getTableDataByTableName('inv_materialcategorysub', '', 'category_description');
                                    if (isset($parentCats) && !empty($parentCats)) {
                                        foreach ($parentCats as $pcat) {
                                            ?>
                                            <option value="<?php echo $pcat['id'] ?>"><?php echo $pcat['category_description'] ?></option>
                                        <?php }
                                    } ?>
                                </select>
                            </div>
                        </div> </br>
                        <div class="form-group">
                            <label class="control-label col-sm-5" for="parent_code">Level-2:</label>
                            <div class="col-sm-7">
                                <select class="form-control" id="main_sub_item_id" name="category_sub_id" onchange="getLevel3CodeByLevel2(this.value);">
                                    <option value="">Select</option>
                                    <?php
                                    $parentCats = getTableDataByTableName('inv_materialcategory','','material_sub_description');
                                    if (isset($parentCats) && !empty($parentCats)) {
                                        foreach ($parentCats as $pcat) {
                                            ?>
                                            <option value="<?php echo $pcat['id'] ?>"><?php echo $pcat['material_sub_description'] ?></option>
                                        <?php }
                                    } ?>
                                </select>
                            </div>
                        </div> </br>
                        <div class="form-group">
                            <label class="control-label col-sm-5" for="sub_code">Level-3 Code:</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="leve3_code" placeholder="Enter leve3 code" name="material_level3_code">
                            </div>
                        </div> </br>
                        <div class="form-group">
                            <label class="control-label col-sm-5" for="name">Leve3 Name:</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="leve3_name" placeholder="name" name="material_level3_description">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- processSubItems -->
                <div class="modal-footer modal_footer_custom_background">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-default" onclick="processMaterialLevel3Items('leve3_added_form_valuex')">Save</button>
                </div>
            </div>
        </div>
    </form>
</div>