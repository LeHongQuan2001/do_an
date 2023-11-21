<link href="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<script src="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.js" type="text/javascript"></script>

<link href="<?php echo WEB_ROOT; ?>library/spry/textareavalidation/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<script src="<?php echo WEB_ROOT; ?>library/spry/textareavalidation/SpryValidationTextarea.js" type="text/javascript"></script>

<link href="<?php echo WEB_ROOT; ?>library/spry/selectvalidation/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<script src="<?php echo WEB_ROOT; ?>library/spry/selectvalidation/SpryValidationSelect.js" type="text/javascript"></script>

<div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title"><b>Kế hoạch giảng dạy</b></h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form role="form" action="<?php echo WEB_ROOT; ?>views/process.php?cmd=createkh" method="post" enctype="multipart/form-data">
    <div class="box-body">
      <div class="form-group">
        <label for="exampleInputEmail1">Khoa</label>
		<input type="hidden" name="khoa" value=""  id="khoa"/>
        <span id="sprytf_name">
		<select name="khoa" class="form-control input-sm">
			<option>--Khoa--</option>
			<?php
			$sql = "SELECT id,tenKhoa FROM khoa";
			$result = dbQuery($sql);
			while($row = dbFetchAssoc($result)) {
				extract($row);
			?>
			<option value="<?php echo $tenKhoa; ?>"><?php echo $tenKhoa; ?></option>
			<?php 
			}
			?>
		</select>
		</span>
      </div>
	  
	  <div class="form-group">
        <label for="exampleInputEmail1">Học Kỳ</label>
		<input type="hidden" name="hocky" value=""  id="hocky"/>
        <span id="sprytf_name">
		<select name="hocky" class="form-control input-sm">
			<option>--học kỳ--</option>
			<?php
			$sql = "SELECT tenHocKy FROM hocky";
			$result = dbQuery($sql);
			while($row = dbFetchAssoc($result)) {
				extract($row);
			?>
			<option value="<?php echo $tenHocKy; ?>"><?php echo $tenHocKy; ?></option>
			<?php 
			}
			?>
		</select>
		</span>
      </div>
	
	  <div class="form-group">
        <label for="exampleInputEmail1">Lớp</label>
		<input type="hidden" name="lop" value=""  id="lop"/>
        <span id="sprytf_name">
		<select name="lop" class="form-control input-sm">
			<option>--lớp học--</option>
			<?php
			$sql = "SELECT tenLop FROM lop";
			$result = dbQuery($sql);
			while($row = dbFetchAssoc($result)) {
				extract($row);
			?>
			<option value="<?php echo $tenLop; ?>"><?php echo $tenLop; ?></option>
			<?php 
			}
			?>
		</select>
		</span>
      </div>

	  <div class="form-group">
        <label for="exampleInputEmail1">Tên Môn</label>
		<input type="hidden" name="mon" value=""  id="mon"/>
        <span id="sprytf_name">
		<select name="mon" class="form-control input-sm">
			<option>--môn học--</option>
			<?php
			$sql = "SELECT tenHocPhan FROM hocphan";
			$result = dbQuery($sql);
			while($row = dbFetchAssoc($result)) {
				extract($row);
			?>
			<option value="<?php echo $tenHocPhan; ?>"><?php echo $tenHocPhan; ?></option>
			<?php 
			}
			?>
		</select>
		</span>
      </div>

	  <div>
			<input type="file" name="file">
		</div>
       
    <!-- /.box-body -->
    <div class="box-footer">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
</div>
<!-- /.box -->
