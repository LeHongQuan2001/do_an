<style>
  .commont-input{
    height: 40px;
    border: 2px solid #767679;
    border-radius: 5px;
    font-size: 15px;
  }
   /* .lay-common-input{
    display: flex;
    align-items: center;
  } */
  .lay-common-input label{
    font-size: 15px;
    margin-top: 7px;
    margin-bottom: 15px;
  }
  .lay-common-input label:last-child{
    margin-right: 45px;
  } 
</style>
<div class="col-md-12">
  
<link href="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<script src="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.js" type="text/javascript"></script>

<link href="<?php echo WEB_ROOT; ?>library/spry/textareavalidation/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<script src="<?php echo WEB_ROOT; ?>library/spry/textareavalidation/SpryValidationTextarea.js" type="text/javascript"></script>

<link href="<?php echo WEB_ROOT; ?>library/spry/selectvalidation/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<script src="<?php echo WEB_ROOT; ?>library/spry/selectvalidation/SpryValidationSelect.js" type="text/javascript"></script>

<div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title"><b>THÊM MỚI</b></h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form role="form" action="<?php echo WEB_ROOT; ?>views/process.php?cmd=createClass" method="post">
    <div class="box-body">
      <div class="form-group lay-common-input">
        <label for="exampleInputEmail1">ID Mã Lớp</label>
        <span id="sprytf_name">
		<input type="text" name="idMaLop" class="form-control input-sm commont-input" placeholder="Mã Lớp">
		</span>
      </div>
      <div class="form-group lay-common-input">
        <label for="exampleInputEmail1">Tên Lớp</label>
        <span id="sprytf_name">
		<input type="text" name="tenLop" class="form-control input-sm commont-input" placeholder="Tên Lớp">
		</span>
      </div>
      <div class="form-group lay-common-input">
        <label for="exampleInputEmail1">Sĩ số</label>
        <span id="sprytf_name">
		<input type="text" name="siSo" class="form-control input-sm commont-input" placeholder="Sĩ số">
		</span>
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