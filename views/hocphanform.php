<?php
$records=getUserRecords();
?>
<div class="col-md-8">
  
<link href="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<script src="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.js" type="text/javascript"></script>

<link href="<?php echo WEB_ROOT; ?>library/spry/textareavalidation/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<script src="<?php echo WEB_ROOT; ?>library/spry/textareavalidation/SpryValidationTextarea.js" type="text/javascript"></script>

<link href="<?php echo WEB_ROOT; ?>library/spry/selectvalidation/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<script src="<?php echo WEB_ROOT; ?>library/spry/selectvalidation/SpryValidationSelect.js" type="text/javascript"></script>

<div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title"><b>Thêm mới</b></h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form role="form" action="<?php echo WEB_ROOT; ?>views/process.php?cmd=createHocPhan" method="post">
    <div class="box-body">
      <div class="form-group">
        <label for="exampleInputEmail1">Mã học phần</label>
        <span id="sprytf_name">
		<input type="text" name="maHocPhan" class="form-control input-sm" placeholder="Mã Học Phần">
		</span>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Học phần</label>
        <span id="sprytf_name">
		<input type="text" name="tenHocPhan" class="form-control input-sm" placeholder="Tên Học Phần">
		</span>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Số tín chỉ</label>
        <span id="sprytf_name">
		<input type="text" name="soTinChi" class="form-control input-sm" placeholder="Số tín chỉ">
		</span>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Giảng viên</label><br>
        <select name="tenGiangVien">
   <option>Lựa chọn</option>
  <?php 
  foreach ($records as $rec) {
    extract($rec);
  ?>
    <option><?php echo $user_fullname; ?> </option>
    <?php 
    }
   ?>
</select>
        <!-- <span id="sprytf_name">
		<input type="text" name="tenGiangVien" class="form-control input-sm" placeholder="Họ và tên">
		</span> -->
      </div>
	 
	  		  
	  
    <!-- /.box-body -->
    <div class="box-footer">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
</div>
<!-- /.box -->
<script type="text/javascript">
// var sprytf_name 	= new Spry.Widget.ValidationTextField("sprytf_name", 'none', {minChars:6, validateOn:["blur", "change"]});
// var sprytf_address 	= new Spry.Widget.ValidationTextarea("sprytf_address", {minChars:10, isRequired:true, validateOn:["blur", "change"]});
// var sprytf_phone 	= new Spry.Widget.ValidationTextField("sprytf_phone", 'none', {validateOn:["blur", "change"]});
// var sprytf_mail 	= new Spry.Widget.ValidationTextField("sprytf_email", 'email', {validateOn:["blur", "change"]});
// //var sprytf_rdate 	= new Spry.Widget.ValidationTextField("sprytf_rdate", "date", {format:"yyyy-mm-dd", useCharacterMasking: true, validateOn:["blur", "change"]});
// //var sprytf_rtime 	= new Spry.Widget.ValidationTextField("sprytf_rtime", "time", {hint:"i.e 20:10", useCharacterMasking: true, validateOn:["blur", "change"]});
// //var sprytf_ucount 	= new Spry.Widget.ValidationTextField("sprytf_ucount", "integer", {validateOn:["blur", "change"]});
// var sprytf_type 	= new Spry.Widget.ValidationSelect("sprytf_type");
//-->
</script>
</div>