<?php if($_SESSION['login'])
{?>
<div class="top-header">
	<div class="container">
		<ul class="tp-hd-lft">
			<li class="hm"><a href="index.html"><i class="fa fa-home"></i></a></li>
			<li class="prnt"><a href="profile.php">My Profile</a></li>
				<li class="prnt"><a href="change-password.php">Change Password</a></li>
			<li class="prnt"><a href="job-history.php">JOB History</a></li>
		</ul>
		<ul class="tp-hd-rgt"> 
			<li class="tol">Welcome :</li>				
			<li class="sig"><?php echo htmlentities($_SESSION['login']);?>-</li> 
			<li> <a href="logout.php"><i class="fa fa-sign-out"></i> <font color="white">Logout</font></a> </li>
        </ul>
		<div class="clearfix"></div>
	</div>
</div><?php } else {?>
<div class="top-header">
	<div class="container">
		<ul class="tp-hd-lft">
			<li class="hm"><a href="index.php"><i class="fa fa-home"></i></a></li>
				<li class="hm"><a href="admin/index.php">Admin Login</a></li>
		</ul>
		<ul class="tp-hd-rgt">			
			<li class="sig"><a href="http://localhost/project/job/includes/register.php" data-toggle="modal" data-target="#myModal" ><font color="white"><b>Sign Up</b></font></a></li> 
			<li class="sigi"><a href="http://localhost/project/job/includes/login.php" data-toggle="modal" data-target="#myModal4" ><font color="white"><b>/ Sign In</b></font></a></li>
        </ul>
		<div class="clearfix"></div>
	</div>
</div>
<?php }?>
<!--- /top-header ---->
<!--- header ---->
<div class="header">
	<div class="container">
		<div class="logo">
			<a href="index.php"><span><font color="#000066">Job portal....</font></span></a>	
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /header ---->
<!--- footer-btm ---->
<style>
.cl-effect-1{
	background:black;
}
.tp-hd-lft li{
	margin:12px;
}
</style>
<div class="footer-btm">
	<div class="container">
	<div class="navigation">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse-navbar-collapse-nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-1">
						<ul class="nav navbar-nav">
							<li><a href="index.php"><font color="white">Home</font></a></li>
								<li><a href="job-list.php"><font color="white">Job Lists</font></a></li>
								<?php if($_SESSION['login'])
{?>
								<?php } else { ?>
								<li><a href="feedback.php"> <font color="white">Feed back </font></a>  </li>
								<?php } ?>
								<div class="clearfix"></div>

						</ul>
					</nav>
				</div><!-- /.navbar-collapse -->	
			</nav>
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>