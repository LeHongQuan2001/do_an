<?php
 require_once '../library/functions.php';
$records = getlichtheotiendo();
?>
<form method="post" enctype="multipart/form-data">
    <div class="box">
        <?php
    $type = $_SESSION['calendar_fd_user']['type'];
    if ($type == 'admin' || $type == 'giaovu') {
    ?>
        <div class="box-header with-border">
            <h3 class="box-title">Lịch theo tiến độ</h3>
            <div
                style="display: flex;  justify-content: space-between;justify-content: left;flex-wrap: wrap;margin-top:20px">
                <div> <input class="input-group" type="file" class="form-control" name="file" style="outline: none;">
                </div>
                <div><button type="submit" class="form-control btn btn-success" name="btnSave">Import</button></div>
            </div>
        </div>
        <?php } else {
      echo "&nbsp;";
    }
    ?>
        <!-- /.box-header -->
        <div class="box-body table-responsive">
            <table class="table table-striped">
                <thead class="bg-success">
                    <tr>
                        <th style="width: 10px">#</th>
                        <th>Mã môn học </th>
                        <th>Tên môn học</th>
                        <th>Số tín chỉ </th>
                        <th>Mã lớp </th>
                        <th>Thứ </th>
                        <th>Tiết bắt đầu </th>
                        <th>Số tiết </th>
                        <th>Phòng học</th>
                        <th>Tuần </th>
                    </tr>
                </thead>
                <?php
        $idx = 1;
        foreach ($records as $rec) {
          extract($rec);
        ?>
                <tr>
                    <td><?php echo $idx++; ?></td>
                    <td><?php echo $maMH; ?></td>
                    <td><?php echo $tenMH; ?></a></td>
                    <td><?php echo $soTinChi; ?></td>
                    <td><?php echo $maLop; ?></td>
                    <td><?php echo $thu; ?></td>
                    <td><?php echo $tietBD; ?></td>
                    <td><?php echo $soTiet; ?></td>
                    <td><?php echo $phong; ?></td>
                    <td><?php echo $tuan; ?></td>
                </tr>
                <?php } ?>
            </table>
        </div>
</form>
<?PHP
require_once '../library/config.php';
require_once '../library/functions.php';
require_once '../library/mail.php';
require_once '../Classes/PHPExcel.php';
if (isset($_POST['btnSave'])) {
  $file = $_FILES['file']['tmp_name'];
  $objReader = PHPExcel_IOFactory::createReaderForFile($file);
  $objReader->setLoadSheetsOnly('ThoiKhoaBieu');
  $objExcel = $objReader->load($file);
  $sheetData = $objExcel->getActiveSheet()->toArray('null', true, true, true);
  $highestRow = $objExcel->setActiveSheetIndex()->getHighestRow();
  for ($row = 2; $row <= $highestRow; $row++) {
    $maMH = $sheetData[$row]['A'];
    $tenMH = $sheetData[$row]['B'];
    $soTinChi = $sheetData[$row]['D'];
    $maLop = $sheetData[$row]['E'];
    $soTCHP = $sheetData[$row]['F'];
    $thu = $sheetData[$row]['I'];
    $tietBD = $sheetData[$row]['J'];
    $soTiet = $sheetData[$row]['K'];
    $phong = $sheetData[$row]['L'];
    $CBGD = $sheetData[$row]['M'];
    $tuan = $sheetData[$row]['N'];
    $sql = "Insert into tbl_lichtheotiendo(maMH,tenMH,soTinChi,maLop,soTCHP,thu,tietBD,soTiet,phong,CBGD,tuan) values('$maMH','$tenMH','$soTinChi','$maLop','$soTCHP','$thu','$tietBD','$soTiet','$phong','$CBGD','$tuan')";
    dbQuery($sql);
  }
  echo ("Successful");
}
?>