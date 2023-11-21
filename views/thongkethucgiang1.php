<?php
require_once '../library/config.php';
require_once '../api/process.php';
require_once '../library/functions.php';
// sử dụng hàm kết nối csdl mysqli
$conn = new mysqli("localhost", "root", "", "db_event_management");
$records = getlopid();
$full = getfulllop();
//$tengvv= gettengv();
?>
<?php
$result = [];
if (isset($_GET["timKiem"])) {
    $sql = "SELECT * FROM tbl_thoikhoabieu WHERE 1=1 ";
    $datestart = $_GET["datestart"];
    $dateend = $_GET["dateend"];
    if (isset($_GET["datestart"]) || isset($_GET["dateend"]) && $datestart != "" && $dateend != "") {
        $sql .= " and startDate BETWEEN '$datestart' AND '$dateend'";
    }
    $lophocphan = $_GET["lophocphan"];
    if (isset($_GET["lophocphan"]) && $lophocphan != "") {
        $sql .= " and Subject='$lophocphan' ";
    }
    $rdoTrangThai = $_GET["rdoTrangThai"];
    if (isset($_GET["rdoTrangThai"]) && $rdoTrangThai != "") {
        $sql .= " and Event = $rdoTrangThai ";
    }
    $result = $conn->query($sql);
}
// Thực thi câu lệnh truy vấn

// printf($result->num_rows);
?>
<?php
$siso = [];
if (isset($_GET["timKiem"])) {
    $sql = "SELECT DISTINCT lop.siSo FROM lop INNER JOIN tbl_thoikhoabieu ON lop.idMaLop = tbl_thoikhoabieu.idMaLop WHERE 1=1 ";
    $lophocphan = $_GET["lophocphan"];
    if (isset($_GET["lophocphan"]) && $lophocphan != "") {
        $sql .= " and tbl_thoikhoabieu.Subject='$lophocphan'";
    }
    $siso = $conn->query($sql);
}
?>
<?php
$giangvien = [];
if (isset($_GET["timKiem"])) {
    $sql = "SELECT DISTINCT tbl_users.fullName FROM tbl_users INNER JOIN tbl_thoikhoabieu ON tbl_users.idName = tbl_thoikhoabieu.CBGD WHERE 1=1 ";
    $lophocphan = $_GET["lophocphan"];
    if (isset($_GET["lophocphan"]) && $lophocphan != "") {
        $sql .= " and tbl_thoikhoabieu.Subject='$lophocphan'";
    }
    $giangvien = $conn->query($sql);
}
?>

<?php
$resthucgiang = [];
if (isset($_GET["timKiem"])) {
    $sqlthucgiang = "SELECT DISTINCT soTinChi FROM tbl_thoikhoabieu WHERE 1=1";
    $lophocphan = $_GET["lophocphan"];
    if (isset($_GET["lophocphan"]) && $lophocphan != "") {
        $sqlthucgiang .= " and Subject  = '$lophocphan' ";
    }
    $resthucgiang = $conn->query($sqlthucgiang);
}
?>


<div id="container">
    <form method="get">

        <input type="hidden" name="v" value="TKTG"/>

        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Thống kê thực giảng</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <table class="table table-bordered">
                    <tr>
                        <td>
                            <div class="form-group">
                                <label>Thời gian <span>(*)</span></label><br>
                                <div style="display: flex;  justify-content: space-between;flex-wrap: wrap;">
                                    <input style="width:47%" class="form-control" type="date" id="datestart"
                                           name="datestart"
                                           value="<?php if (isset($_GET["datestart"])) echo $_GET["datestart"]; ?>">
                                    <input style="width:47%" class="form-control" type="date" id="dateend"
                                           name="dateend"
                                           value="<?php if (isset($_GET["dateend"])) echo $_GET["dateend"]; ?>"><br><br>
                                </div>
                            </div>
                        </td>

                        <?php
                        $type = $_SESSION['calendar_fd_user']['type'];
                        if ($type == 'admin' || $type == 'giaovu') {
                            ?>
                            <td><label>Lớp học phần<span>(*)</span></label><br>
                                <select class="form-control" name="lophocphan" id="lophocphan"
                                        value="<?php if (isset($_GET["lophocphan"])) echo $_GET["lophocphan"]; ?>">
                                    <option>Chọn</option>
                                    <?php
                                    foreach ($full as $rec) {
                                        extract($rec);
                                        ?>
                                        <option><?php echo $lsubject; ?> </option>
                                        <?php
                                    }
                                    ?>
                                </select>
                            </td>

                            <?php
                        } else {
                            ?>
                            <td><label>Lớp học phần <span>(*)</span></label><br>
                                <select class="form-control" name="lophocphan" id="lophocphan"
                                        value="<?php if (isset($_GET["lophocphan"])) echo $_GET["lophocphan"]; ?>">
                                    <option>Chọn</option>
                                    <?php
                                    foreach ($records as $rec) {
                                        extract($rec);
                                        ?>
                                        <option><?php echo $lsubject; ?> </option>
                                        <?php
                                    }
                                    ?>
                                </select>
                            </td>

                            <?php
                        }
                        ?>


                        <td>
                            <div class="form-group">
                                <label>Trạng thái</label><br>
                                <div style="padding-left:20px;">
                                    <label class="radio"> <input checked="checked" id="rdoTrangThai" name="rdoTrangThai"
                                                                 type="radio" value="">
                                        Tất cả </label>
                                    <label class="radio"><input id="rdoTrangThai" name="rdoTrangThai" type="radio"
                                                                value="0"> Chưa giảng dạy</label>
                                </div>
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td colspan='4'>
                            <button style="margin-left: 10px;" type="submit" class="btn btn-info" name="timKiem"><i
                                        aria-hidden="true" value="Xem thống kê"></i>&nbsp;Xem thống kê
                            </button>
                            <!-- <input type="submit" value="Xem thống kê" name="confirm" class="btn btn-success" /> -->
                        <td>
                    </tr>
                </table>
                <div class="box-body table-responsive">
                    <table class="table table-striped">
                        <thead class="bg-success">
                        <tr>
                            <th>STT</th>
                            <th>Ngày chấm</th>
                            <th>Kế hoạch</th>
                            <th>Thực giảng</th>
                            <th>Chưa giảng dạy</th>
                            <th>Lớp học</th>
                            <th>Sĩ số</th>
                            <th>Số SV có mặt</th>
                            <th>Nội dung bài giảng</th>
                            <th>Ghi chú</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $stt = 0;
                        $sum = 0;
                        $sum1 = 0;
                        if ($result) {
                            while ($row = $result->fetch_assoc()) :
                                $stt++;
                                $thucgiang = $row["Event"];
                                if ($row["Event"] == 0) {
                                    $thucgiang = 0;
                                } else {
                                    $thucgiang = $row["soTiet"];
                                }
                                if ($row["Event"] == 0) {
                                    $thieusot = $row["soTiet"];
                                } else {
                                    $thieusot = 0;
                                }
                                $sum1 += $thieusot;
                                $sum += $thucgiang;
                                ?>
                                <tr>
                                    <th class="text-center"><?php echo $stt; ?></th>
                                    <td><?php echo $row["startDate"]; ?></td>
                                    <td><?php echo $row["soTiet"]; ?></td>
                                    <td> <?php echo $thucgiang; ?> </td>
                                    <td> <?php echo $thieusot; ?> </td>
                                    <td><?php echo $row["Location"]; ?></td>
                                    <td></td>
                                    <td><?php echo $row["siSo"]; ?></td>
                                    <td><?php echo $row["noiDung"]; ?></td>
                                    <td><?php echo $row["nhanXet"]; ?></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            <?php
                            endwhile;
                        }
                        ?>
                        </tbody>
                        <tfoot>
                        <tr>
                            <!-- <th> <?php echo ucwords($_SESSION['calendar_fd_user']['fullName']); ?> </th> -->
                            <th></th>
                        </tr>
                        <tr>
                            <th colspan=2>Tổng</th>
                            <th> <?php
                                if ($resthucgiang) :
                                    while ($khoa = $resthucgiang->fetch_array()) :
                                        $soTiet = $khoa["soTinChi"];
                                        echo $soTiet * 15;
                                    endwhile;
                                endif;
                                ?></th>
                            <th><?php echo $sum; ?></th>
                            <th><?php echo $sum1; ?></th>
                            <th></th>
                            <th>Sĩ số - <?php
                                if ($siso) :
                                    while ($lop = $siso->fetch_assoc()) :
                                        $sS = $lop["siSo"];
                                        echo $sS;
                                    endwhile;
                                endif;
                                ?></th>
                            <th>Giảng viên giảng dạy - <?php
                                if ($giangvien) :
                                    while ($khoa1 = $giangvien->fetch_array()) :
                                        $soTiet1 = $khoa1["fullName"];
                                        echo $soTiet1;
                                    endwhile;
                                endif;
                                ?>
                            <th>


                        </tr>
                        </tfoot>
                    </table>
                </div>

                <!-- <input type="submit" name="xuatexcel" id="xuatexcel" value="Save as Excel"/>  -->

                <!-- <button name="xuatexcel">  <a href="../views/export.php"><i class=""></i><span>Save as Excel</span></a></button>
                 -->
            </div>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#xuat").click(function (e) {
                e.preventDefault();
                $("form").attr("action", "export.php");
                $("form").submit();
            })
        });
    </script>


</div>
<div id="container">
    <form method="get" action="export.php">
        <input type="hidden" name="v" value="TKTG"/>
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Xuất thống kê giảng viên</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <table class="table table-bordered">
                    <tr>
                        <td>
                            <div class="form-group">
                                <label>Thời gian <span>(*)</span></label><br>
                                <div style="display: flex;  justify-content: space-between;flex-wrap: wrap;">
                                    <input style="width:47%" class="form-control" type="date" id="datestart"
                                           name="datestart"
                                           value="<?php if (isset($_GET["datestart"])) echo $_GET["datestart"]; ?>">
                                    <input style="width:47%" class="form-control" type="date" id="dateend"
                                           name="dateend"
                                           value="<?php if (isset($_GET["dateend"])) echo $_GET["dateend"]; ?>"><br><br>
                                </div>
                            </div>
                        </td>

                        <?php
                        $type = $_SESSION['calendar_fd_user']['type'];
                        if ($type == 'admin' || $type == 'giaovu') {
                            ?>
                            <td><label>Lớp học phần<span>(*)</span></label><br>
                                <select class="form-control" name="lophocphan" id="lophocphan"
                                        value="<?php if (isset($_GET["lophocphan"])) echo $_GET["lophocphan"]; ?>">
                                    <option>Chọn</option>
                                    <?php
                                    foreach ($full as $rec) {
                                        extract($rec);
                                        ?>
                                        <option><?php echo $lsubject; ?> </option>
                                        <?php
                                    }
                                    ?>
                                </select>
                            </td>

                            <?php
                        } else {
                            ?>
                            <td><label>Lớp học phần <span>(*)</span></label><br>
                                <select class="form-control" name="lophocphan" id="lophocphan"
                                        value="<?php if (isset($_GET["lophocphan"])) echo $_GET["lophocphan"]; ?>">
                                    <option>Chọn</option>
                                    <?php
                                    foreach ($records as $rec) {
                                        extract($rec);
                                        ?>
                                        <option><?php echo $lsubject; ?> </option>
                                        <?php
                                    }
                                    ?>
                                </select>
                            </td>

                            <?php
                        }
                        ?>
                        <td>
                            <div class="form-group">
                                <label>Trạng thái</label><br>
                                <div style="padding-left:20px;">
                                    <label class="radio"> <input checked="checked" id="rdoTrangThai" name="rdoTrangThai"
                                                                 type="radio" value="">
                                        Tất cả </label>
                                    <label class="radio"><input id="rdoTrangThai" name="rdoTrangThai" type="radio"
                                                                value="0"> Chưa giảng dạy</label>
                                </div>
                            </div>
                        </td>
                    </tr>

                </table>
                <button style="margin-left: 10px;" name="xuatexcel" class="btn btn-info"
                        onclick="return confirm('Bạn có muốn xuất file Excel không?')"><a href="../views/export.php"><i
                                aria-hidden="true"></i><span style="color: white;">Save as Excel</span></a></button>
            </div>
    </form>

    <?php
    $type = $_SESSION['calendar_fd_user']['type'];
    if ($type == 'admin' || $type == 'giaovu') {
        ?>
        <div id="container">
            <form method="get" action="exportgiaovu1.php">

                <!-- <input type="hidden" name="v" value="TKTG" /> -->

                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thống kê báo cáo</h3>

                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table class="table table-bordered">
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <label>Thời gian <span>(*)</span></label><br>
                                        <div style="display: flex;  justify-content: space-between;flex-wrap: wrap;">
                                            <input style="width:47%" class="form-control" type="date" id="datestart"
                                                   name="datestart"
                                                   value="<?php if (isset($_GET["datestart"])) echo $_GET["datestart"]; ?>">
                                            <input style="width:47%" class="form-control" type="date" id="dateend"
                                                   name="dateend"
                                                   value="<?php if (isset($_GET["dateend"])) echo $_GET["dateend"]; ?>"><br><br>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan='4'>
                                    <button name="xuatexcelgiaovu" class="btn btn-info"><a
                                                href="../views/exportgiaovu1.php"><i class=""></i><span
                                                    style="color: white;">Thống Kê</span></a></button>
                                <td>
                            </tr>
                        </table>
                    </div>
            </form>


        </div>

    <?php }
    ?>



