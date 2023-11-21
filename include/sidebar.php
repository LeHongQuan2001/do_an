<!-- sidebar: style can be found in sidebar.less -->

<section class="sidebar">
  <ul class="sidebar-menu">
    <li class="header">QUẢN LÝ GIẢNG VIÊN</li>
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=DB"><i class="fa fa-calendar"></i><span>Calendar</span></a>
	</li>
	<?php 
$type = $_SESSION['calendar_fd_user']['type'];
if($type == 'admin') {
?>
<li class="treeview"> 
<a href="<?php echo WEB_ROOT; ?>views/?v=USERS"><i class="fa fa-users"></i><span>Quản lý tài khoản</span></a>
</li>
<?php }

	$type = $_SESSION['calendar_fd_user']['type'];
	if($type == 'admin' || $type =='giaovu') {
	?>
	
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=GIAOVIEN"><i class="fa fa-users"></i><span>Quản lý giảng viên</span></a>
	</li>
	
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=CLASS"><i class="fa-solid fa-school"></i><span>Quản lý lớp</span></a>
	</li>
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=HOCKY"><i class="fa-solid fa-books"></i><span>Quản lý học kỳ</span></a>
	</li>
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=HOCPHAN"><i class="fa-solid fa-book-open-cover"></i><span>Quản lý học phần</span></a>
	</li>
	
	<?php
	}
	?>
	<?php 
	$type = $_SESSION['calendar_fd_user']['type'];
	if($type == 'giaovien') {
	?>
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=GIAOVIEN"><i class="fa fa-users"></i><span>Thông tin giảng viên</span></a>
	</li>
	<?php
	}
	?>
	
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=LTT"><i class="fa fa-calendar"></i><span>Lịch giảng dạy</span></a>
	</li>
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=LTTD"><i class="fa fa-calendar"></i><span>Lịch theo tiến độ</span></a>
	</li>
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=TKTG"><i class="fa fa-calendar"></i><span>Thống kê thực giảng</span></a>
	</li>
	<?php 
	$type = $_SESSION['calendar_fd_user']['type'];
	if($type == 'admin' || $type =='giaovu') {
	?>
	<!-- <li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=thongkegiaovu"><i class="fa fa-calendar"></i><span>Thống kê</span></a>
	</li> -->
	<?php
	}
	?>

	<!-- <li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=kehoach"><i class="fa fa-calendar"></i><span>Ke hoach</span></a>
	</li>
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=LIST"><i class="fa fa-newspaper-o"></i><span>Quản lý kế hoạch</span></a>
	</li> -->
	<!-- <li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=HOLY"><i class="fa-solid fa-book-open-cover"></i><span>Holydays</span></a>
	</li> -->

  </ul>
 
</section>
<!-- /.sidebar -->