<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
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
                        <button name="xuatexcelgiaovu">  <a href="../views/exportgiaovu1.php"><i class=""></i><span>Thống Kê</span></a></button>
                        <td>
                    </tr>
                </table>
               
                </form>


</div>  


</body>
</html>