<style>
    .table {
        border: 1px;
    }
</style>
<?php
$conn = new mysqli("localhost", "root", "", "db_event_management");
header("Content-Type: application/xls");
header("Content-Disposition: attachment; filename=thongke_list.xls");
header("Pragma: no-cache");
header("Expires: 0");
$result = [];
if (isset($_GET["xuatexcelgiaovu"])) {
    $datestart = $_GET["datestart"];
    $dateend = $_GET["dateend"];
    $sql = "select tbl_thoikhoabieu.Subject as Lop_Hoc_Phan ,
    tbl_users.fullName as Ten_Giang_Vien, 
    SUM(tbl_thoikhoabieu.soTiet)  AS Thuc_Giang, 
    tbl_thoikhoabieu.soTinChi*15 as Tong_So_Tiet,
    tbl_thoikhoabieu.soTinChi as So_Tin_Chi,
    lop.siSo as Si_So, 
    lop.tenLop as Ten_Lop 
    FROM tbl_users INNER JOIN tbl_thoikhoabieu ON tbl_users.idName = tbl_thoikhoabieu.CBGD 
    INNER JOIN lop ON lop.idMaLop = tbl_thoikhoabieu.idMaLop 
    where Event = 1 and startDate BETWEEN '$datestart' AND '$dateend'
    GROUP BY Subject ";
    $result = $conn->query($sql);
}
$output = "";
$output .= "
		<table border=1px; >
			<thead>
				<tr>
                    <th>ID</th>
                    <th>Lớp học phần</th>
                    <th>Số tín chỉ</th>
                    <th>Lớp</th>
                    <th>Giảng viên</th>
                    <th>Thực giảng</th>
                    <th>Tổng số tiết</th>
                    <th>Sĩ số</th>
                    <th>Ghi chú</th>
				</tr>
			</thead>	
			<tbody>
	";
$stt = 0;
if ($result)
    while ($fetch = $result->fetch_assoc()) {
        $stt++;
        $ten_giang_vien = $fetch["Ten_Giang_Vien"];
        $thuc_giang = $fetch["Thuc_Giang"];
        $lop_hoc_phan = $fetch["Lop_Hoc_Phan"];
        $so_tin_chi = $fetch["So_Tin_Chi"];
        $tong_so_tiet = $fetch["Tong_So_Tiet"];
        $si_so = $fetch["Si_So"];
        $ten_lop = $fetch["Ten_Lop"];
        $output .= "
				<tr>
				    <th >" . $stt . "</th>
                    <td> " . $lop_hoc_phan . " </td>
                    <td>" . $so_tin_chi . " </td>
                    <td>" . $ten_lop . "</td>
                    <td>" . $fetch["Ten_Giang_Vien"] . "</td>
                    <td>" . $thuc_giang . "</td>
                    <td> " . $tong_so_tiet . "</td>
                    <td>" . $si_so . "</td>
					</tr>
	";
    }
$output .= "
			</tbody>
			<tfoot>
			</tfoot>
 
		</table>
		<br>
	";
echo $output;
?>