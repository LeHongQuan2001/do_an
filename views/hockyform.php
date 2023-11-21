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
  <form role="form" action="<?php echo WEB_ROOT; ?>views/process.php?cmd=createHocKy" method="post">
    <div class="box-body">
      <div class="form-group">
        <label for="exampleInputEmail1">Mã học kỳ</label>
        <span id="sprytf_name">
		<input type="text" name="maHocKy" class="form-control input-sm" placeholder="Mã Học Kỳ">
		</span>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Học kỳ</label>
        <span id="sprytf_name">
		<input type="text" name="tenHocKy" class="form-control input-sm" placeholder="Tên Học Kỳ">
		</span>
      </div>
      <div>
      <label for="datestart">Thời gian bắt đầu :</label>
  <input type="date" id="datestart" name="datestart"><br><br>

  <label for="dateend">Thời gian kết thúc :</label>
  <input type="date" id="dateend" name="dateend"><br><br>
</div>
      <!-- <div>
      <label for="exampleInputEmail1">Môn học</label>
      <div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
  <label class="form-check-label" for="inlineCheckbox1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
  <label class="form-check-label" for="inlineCheckbox2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3" >
  <label class="form-check-label" for="inlineCheckbox3">3</label>
</div>
</div> -->
	 
	  		  
	  
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