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
</head>
<body background="raw/back.jpg">
	<nav class="navbar navbar-inverse ">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				
			</button>
			<a class="navbar-brand" href="index.jsp">PCLSCMS</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp"><span
						class="glyphicon glyphicon-home"></span> Home</a>
			
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="index.jsp"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a>
						</li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><span
						class="glyphicon glyphicon-user"style="color: green"></span> Profile <span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="Owner.jsp"><span
								class="glyphicon glyphicon-user" style="color: blue"></span>
								View </a>
						</li>
						<li><a href="Login.jsp"><span
								class="glyphicon glyphicon-user" style="color: red"></span>
								Change Password</a>
						</li>
					
					</ul></li>

			</ul>
		</div>
	</div>
	</nav>
	
		<div class="container">
	
					<form class="form-signin" method="post" action="SO">
						
								
					<div class="row">			
					<div class="col-md-8 col-md-offset-2">
				<h4 class="text-center login-title" style="color: yellow">Create New SO</h4>	</div>	
					<div class="col-md-4 col-md-offset-2">	<input type="text" name="fn" class="form-control"
							placeholder="First Name" required autofocus> </div>
			<div class="col-md-4">				<input type="text" class="form-control" name="ln"
							placeholder="Last Name" required><br>
							</div></div>
					<div class="row">			
					<div class="col-md-4 col-md-offset-2">
							
						<input type="text" name="uname1" class="form-control"
							placeholder="User Name" required autofocus><br>
				 </div>
			<div class="col-md-4">			 <input type="password" class="form-control" name="pwd1"
							placeholder="Password" required><br>
							</div></div>
					<div class="row">			
					<div class="col-md-4 col-md-offset-2">
					
						<input type="text" name="Mob" class="form-control"
							placeholder="Mobile No." required autofocus> 
				</div>
			<div class="col-md-4">			<input type="text" class="form-control" name="email"
							placeholder="Email" disabled><br>
							</div></div>
						<div class="row">			
					<div class="col-md-8 col-md-offset-2">
					<textarea class="form-control" rows="2" id="comment" placeholder="Address"></textarea><br>
					</div></div>	
						<div class="row">			
					<div class="col-md-8 col-md-offset-2">
					<button class="btn btn-lg btn-primary btn-block" type="submit">
							Create</button>
						</div></div>	
					</form>
				</div>
						
						<div class="row">
			<div  class="col-md-8 col-md-offset-2">

				<h4 class="text-center login-title" style="color: yellow">Enter Customer Detail</h4>
						<input type="text" name="name" class="form-control"
							placeholder="Enter name" required autofocus>
							
				<br>			<input type="text" name="Mob" class="form-control"
							placeholder="Enter Mob No." required autofocus>
			
					
					</div></div>
					
					
					
	
	
	</body>
</html>