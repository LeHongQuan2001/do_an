<?php 
$records = gethocky();
?>
<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Danh sách lớp học</h3>
    <button style="margin-left: 733px;" type="button" class="btn btn-info" onclick="javascript:createHocKyForm();"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;Thêm mới học kỳ</button>
  </div>
  <!-- /.box-header -->
  <div class="box-body table-responsive">
      <table class="table table-striped">
        <thead class="bg-success">
      <tr>
        <th style="width: 10px">#</th>
        <th>Mã học kỳ </th>
        <th>Học kỳ</th>
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
        <td><?php echo $kmahocky; ?></td>
        <td><?php echo $ktenhocky; ?></a></td>
        <td><a class="btn btn-danger" href="javascript:deleteHocKy('<?php echo $kmahocky ?>');">Delete</a></td>
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
function deleteHocKy(kmahocky) {
	if(confirm('Deleting holiday will allows user to book that date.\n\nAre you sure you want to proceed ?')) {
		window.location.href = '<?php echo WEB_ROOT; ?>api/process.php?cmd=kdelete&kmahocky='+kmahocky;
	}
}
function createHocKyForm() {
	window.location.href = '<?php echo WEB_ROOT; ?>views/?v=CREATEHOCKY';
}

</script>
