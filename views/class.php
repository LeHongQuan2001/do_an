<?php 
$records = getlop();
?>
<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Danh sách lớp học</h3>
    <button style="margin-left: 733px;" type="button" class="btn btn-info" onclick="javascript:createClassForm();"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;Thêm mới lớp học</button>
  </div>
  <!-- /.box-header -->
  <div class="box-body table-responsive">
      <table class="table table-striped">
     <thead class="bg-success">
     <tr>
        <th style="width: 10px">#</th>
        <th>ID Lớp </th>
        <th>Tên Lớp</th>
        <th>Sĩ số</th>
        <th></th>
      </tr>
     </thead>
      <?php
	  $idx = 1;
	  foreach($records as $rec) {
	  	extract($rec);
	  ?>
      <tr>
        <td><?php echo $idx++; ?></td>
        <td><?php echo $cidmalop; ?></td>
        <td><?php echo $ctenlop; ?></a></td>
        <td><?php echo $csiso; ?></td>
        <td><a class="btn btn-danger" href="javascript:deleteClass('<?php echo $cid ?>');">Delete</a></td>
      </tr>
      <?php } ?>
    </table>
    
  </div>
  
  <!-- /.box-body -->
  <div class="box-footer clearfix">
    <?php echo generateHolidayPagination(); ?> </div>
</div>
<!-- /.box -->
<script language="javascript">
function deleteClass(cid) {
	if(confirm('Deleting holiday will allows user to book that date.\n\nAre you sure you want to proceed ?')) {
		window.location.href = '<?php echo WEB_ROOT; ?>api/process.php?cmd=cdelete&cid='+cid;
	}
}
function createClassForm() {
	window.location.href = '<?php echo WEB_ROOT; ?>views/?v=CREATECLASS';
}

</script>
