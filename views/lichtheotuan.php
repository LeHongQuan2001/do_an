<div class="col-md-12">
    <?php include('calendar.php'); ?>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <?php
            $type = $_SESSION['calendar_fd_user']['type'];
            if ($type == 'admin' || $type == 'giaovu') {
            include('eventform.php');
            ?>
        </div>
        <div class="col-md-6">
            <div id="container">
                <form method="get" action="xoathoikhoabieu.php">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title"><b>Xóa kế hoạch giảng dạy</b></h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table class="table table-bordered">
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <label>Thời gian <span>(*)</span></label><br>
                                            <div style="display: flex;  justify-content: space-between;flex-wrap: wrap;">
                                                <input style="width:47%" class="form-control" type="date"
                                                       id="datestart"
                                                       name="datestart"
                                                       value="<?php if (isset($_GET["datestart"])) echo $_GET["datestart"]; ?>">
                                                <input style="width:47%" class="form-control" type="date"
                                                       id="dateend"
                                                       name="dateend"
                                                       value="<?php if (isset($_GET["dateend"])) echo $_GET["dateend"]; ?>"><br><br>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan='4'>
                                        <button name="xoathongtin" class="btn btn-info"><a
                                                    href="../views/xoathoikhoabieu.php"><i class=""></i><span
                                                        style="color: white;">Xóa thông tin</span></a></button>
                                    <td>
                                </tr>
                            </table>
                        </div>
                </form>
            </div>
        </div>
        <?php
        } else {
            echo "&nbsp;";
        }
        ?>
    </div>
</div>
