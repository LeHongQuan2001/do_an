
<?php
$conn = new mysqli("localhost", "root", "", "db_event_management");
$result = [];
if (isset($_GET["xoathongtin"])) {
    $datestart = $_GET["datestart"];
    $dateend = $_GET["dateend"];
    $sql = "delete * from tbl_thoikhoabieu where startDate = $datestart and endDate = $dateend" ;
    $result = $conn->query($sql);
}
?>