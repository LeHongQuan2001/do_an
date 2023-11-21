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
 
	//lay so tin chi
	$hocphan = $_GET["lophocphan"];
    $resthucgiang = [];
    if (isset($_GET["xuatexcel"])) {
        $sqlthucgiang = "SELECT DISTINCT soTinChi FROM tbl_thoikhoabieu WHERE 1=1";
        $lophocphan = $_GET["lophocphan"];
        if (isset($_GET["lophocphan"]) && $lophocphan != "") {
            $sqlthucgiang .= " and Subject  = '$lophocphan' ";
        }
        $resthucgiang = $conn->query($sqlthucgiang);
    }

	//lay si so theo lop
	$siso = [];
    if (isset($_GET["xuatexcel"])) {
        $sql = "SELECT DISTINCT lop.siSo FROM lop INNER JOIN tbl_thoikhoabieu ON lop.idMaLop = tbl_thoikhoabieu.idMaLop WHERE 1=1 ";
        $lophocphan = $_GET["lophocphan"];
        if (isset($_GET["lophocphan"]) && $lophocphan != "") {
            $sql .= " and tbl_thoikhoabieu.Subject='$lophocphan'";
        }
        $siso = $conn->query($sql);
    }

//lay ten giang vien
$giangvien = [];
if (isset($_GET["xuatexcel"])) {
    $sql = "SELECT DISTINCT tbl_users.fullName FROM tbl_users INNER JOIN tbl_thoikhoabieu ON tbl_users.idName = tbl_thoikhoabieu.CBGD WHERE 1=1 ";
    $lophocphan = $_GET["lophocphan"];
    if (isset($_GET["lophocphan"]) && $lophocphan != "") {
        $sql .= " and tbl_thoikhoabieu.Subject='$lophocphan'";
    }
    $giangvien = $conn->query($sql);
}

	//lay toan bo bang tkb
    $result = [];
if (isset($_GET["xuatexcel"])) {
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


	$output = "";
 
	$output .="
		<table border=1px; >
			<thead>
				<tr>
				<th>ID</th>
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
	";
 
					$stt = 0;
					$sum = 0;
                    $sum1 = 0;
					//$query = mysqli_query($conn, $result) or die(mysqli_error());
                    if($result)
					while($fetch = $result->fetch_assoc()){
						$stt++;
						$thucgiang = $fetch["Event"];
						if ($fetch["Event"] == 0) {
							$thucgiang = 0;
						} else {
							$thucgiang = $fetch["soTiet"];
						}
						if ($fetch["Event"] == 0) {
							$thieusot = $fetch["soTiet"];
						} else {
							$thieusot = 0;
						}
						$sum1 += $thieusot;
						$sum += $thucgiang;
 
	$output .= "
				<tr>
				<td>".$stt."</td>
					<td>".$fetch['startDate']."</td>
					<td>".$fetch['soTiet']."</td>
					<td>".$thucgiang."</td>
					<td>".$thieusot."</td>
					<td>".$fetch['Location']."</td>
					<td></td>
					<td>".$fetch['siSo']."</td>
					<td>".$fetch['noiDung']."</td>
					<td>".$fetch['nhanXet']."</td>
					</tr>
	"; }
	$output .="
			</tbody>
			<tfoot>
			</tfoot>
 
		</table>
		<br>
	";
	if ($resthucgiang) :
		while ($khoa = $resthucgiang->fetch_array()) :
			$soTiet = $khoa["soTinChi"];
			$kh = $soTiet * 15;
			$output .="
			<b>	Lớp học phần : ".$hocphan." <br> </b> 
			";
		endwhile;
	endif;

	//<th> <?php
	// if ($giangvien) :
	// 	while ($khoa1 = $giangvien->fetch_array()) :
	// 		$soTiet1 = $khoa1["fullName"];
	// 		echo $soTiet1;
	// 	endwhile;
	// endif;


	if ($giangvien) :
		 	while ($khoa1 = $giangvien->fetch_array()) :
		 		$soTiet1 = $khoa1["fullName"];
			$output .="
			<b>	Giảng viên : ".$soTiet1." <br> </b> 
			";
		endwhile;
	endif;
			$output .="
			<b>Tổng : <br></b>
			<b>Kế hoạch : ".$kh."<br></b>
			<b>Thực giảng : ".$sum." <br></b>
			";
	if ($siso) :
		while ($lop = $siso->fetch_array()) :
			$sS = $lop["siSo"];
			$output .="	
			<b>Sĩ số: ".$sS." </b>
			";
		endwhile;
	endif;
	
 
	echo $output;
	
 
?>