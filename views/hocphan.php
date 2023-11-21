<?php 
$records = gethocphan();
?>
<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Danh sách học phần</h3>
    <button style="margin-left: 733px;" type="button" class="btn btn-info" onclick="javascript:createHocPhanForm();"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;Thêm mới học phần</button>
  </div>
  <!-- /.box-header -->
  <div class="box-body table-responsive">
      <table class="table table-striped">
        <thead class="bg-success">
      <tr>
        <th style="width: 10px">#</th>
        <th> ID </th>
        <th>Mã học phần </th>
        <th>Tên học phần</th>
        <th>Số tín chỉ  </th>
        <th>Giảng viên </th>
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
        <td><?php echo $pid; ?></td>
        <td><?php echo $pmahocphan; ?></td>
        <td><?php echo $ptenhocphan; ?></a></td>
        <td><?php echo $pstc; ?></td>
        <td><?php echo $ptengiangvien ?></td>
        <td><a class="btn btn-danger" href="javascript:deleteHocPhan('<?php echo $pid ?>');">Delete</a></td>
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
function deleteHocPhan(pid) {
	if(confirm('Deleting holiday will allows user to book that date.\n\nAre you sure you want to proceed ?')) {
		window.location.href = '<?php echo WEB_ROOT; ?>api/process.php?cmd=pdelete&pid='+pid;
	}
}
function createHocPhanForm() {
	window.location.href = '<?php echo WEB_ROOT; ?>views/?v=CREATEHOCPHAN';
}

</script>
