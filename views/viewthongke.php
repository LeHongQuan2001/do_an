<?php 
//$records = gethocphanid();
$records=getlopid();
$views=viewdata();
//$lich=getlichtheotiendo();
?>
<div id="container">
    <form method="get">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Danh sách lớp học</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <table class="table table-bordered">
                    <tr>
                        <td>
                            <div>
                                <label>Thời gian <span>(*)</span></label><br>
                                <input type="date" id="datestart" name="datestart">
                                <input type="date" id="dateend" name="dateend"><br><br>
                            </div>
                        </td>

                        <td> <label>Lớp học phần <span>(*)</span></label><br>
                            <select name="lophocphan" id="lophocphan">
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
                        <td>
                            <div>
                                <label>Trạng thái</label><br>
                                <input checked="checked" id="rdoTrangThai" name="rdoTrangThai" type="radio" value="0">
                                Tất cả
                                <input id="rdoTrangThai" name="rdoTrangThai" type="radio" value="1"> Thiếu sót
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='4' style='margin-right'>
                            
                            <button style="margin-left: 10px;" type="button" class="btn btn-info" name="confirm" onclick="javascript:viewdata();"><i
                                    aria-hidden="true"></i>&nbsp;Xem thống kê</button>
                            <!-- <input type="submit" value="Xem thống kê" name="confirm" class="btn btn-success" /> -->

                        <td>
                    </tr>
                </table>
                <table border="1" style=" width: 98%; text-align-last: center;">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Ngày chấm </th>
                            <th>Thực giảng</th>

                            <th>Lớp học </th>
                        </tr>
                    </thead>
                    <tbody>
                        <td id="txtstt"> </td>
                        <td id="txtngaycham"> </td>
                        <td id="txtthucgiang"> </td>
                        <td id="txtlophoc"> </td>
                        <?php 
                        $stt=0;
                        if($views){
                             // đọc từng dòng trong tập kết quả
                            while($row = $views->fetch_array()):
                                $stt++; 
                    ?>
                        <tr>
                            <th class="text-center"><?php echo $stt;?></th>
                            <td><?php echo $startDate ;?></td>
                            <td><?php echo $soTiet;?></td>
                            <td><?php echo $Location;?></td>
                        </tr>
                        <?php
                        endwhile;
                    }
                    ?>
                    </tbody>
                </table>

            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">
                <?php echo generateHolidayPagination(); ?> </div>
        </div>
    </form>


</div>



<!-- /.box -->
<script language="javascript">
function viewdata(datestart, dateend, lophocphan, rdotrangthai) {
    var datestart = document.getElementById("datestart").value;
    var dateend = document.getElementById("dateend").value;
    var lophocphan = document.getElementById("lophocphan").value;
    var rdotrangthai = document.getElementById("rdoTrangThai").value;



    if (confirm('Are you sure you wants to it ?')) {
        window.location.href = '<?php echo WEB_ROOT; ?>api/process.php?cmd=viewdt&datestart=' + datestart +
            '&dateend=' + dateend + '&lophocphan=' + lophocphan + '&rdotrangthai=' + rdotrangthai;
    }
}
</script>