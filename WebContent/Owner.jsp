<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	//function logalrt(){
	<%-- 	
	//	var INOUT= '<%=Session["INOUT"]%>';
		//if(@Session["INOUT1"]=="out")
		//alert(INOUT+"Wrong User Name or Password");
		//}</script>  --%>
</head>
<body background="raw/back.jpg" ><!-- !onload="logalrt();"-->
	<nav class="navbar navbar-inverse ">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">PCLSCMS</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp"><span
						class="glyphicon glyphicon-home"></span> Home</a></li>
				<li class="active"><a href="About.jsp"><span
						class="glyphicon glyphicon-info-sign"></span> About us</a></li>
				<li class="active"><a href="Contact.jsp"><span
						class="glyphicon glyphicon-envelope"></span> Contact us</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><span
						class="glyphicon glyphicon-log-in"></span> Login <span
						class="caret"></span> </a>
					<ul class="dropdown-menu">
						<li><a href="Owner.jsp"><span
								class="glyphicon glyphicon-user" style="color: blue"></span>
								Owner</a></li>
						<li><a href="Login.jsp"><span
								class="glyphicon glyphicon-user" style="color: red"></span>
								Shipping Manager</a></li>
						<li><a href="seller.jsp"><span
								class="glyphicon glyphicon-user" style="color: green"></span>
								Seller</a></li>
					</ul>
				</li>

			</ul>
		</div>
	</div>
	</nav>

	<div class="container" >
		<div class="row">
			<div class="col-md-3 col-md-offset-4">

				<h4 class="text-center login-title" style="color: yellow">Sign
					in to access your account</h4>
				<div class="account-wall">
					<img src="raw/owner.png" class="img-responsive img-rounded"
						style="background-color: #ffdf1b; margin-left: auto; margin-right: auto;"
						id="o"> <br> <br>
					<form class="form-signin" method="post" action="Login">
						<input type="hidden" name="id1" class="form-control" value="owner">
						<input type="text" name="uname1" class="form-control"
							placeholder="User Name" required autofocus><br> <input
							type="password" class="form-control" name="pwd1"
							placeholder="Password" required><br>
						<button class="btn btn-lg btn-primary btn-block" type="submit">
							Sign in</button>

					</form>
				</div>

			</div>
		</div>
	</div>
</body>
</html>