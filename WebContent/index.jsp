<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>PCLSCMS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!--   <link rel="stylesheet" type="text/css"
	href="style/css/bootstrap.min.css">
	<script
	src="style/js/bootstrap.min.js"></script>
	<script
	src="style/js/jquery-1.11.1.min.js"></script> -->
 <script>
  function setCookie1() {
	  
    document.cookie = "usrtype=owner";

	
}
  function setCookie2() {
	
	    document.cookie = "usrtype=ship_mngr";
	}
  function setCookie3() {
	
	    document.cookie = "usrtype=seller";
	}
 


</script>
</head>

<!--  <link rel="stylesheet" href="style.css" type="text/css"> -->

</head>
<body background="raw/back.jpg">
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
						class="glyphicon glyphicon-home"></span> Home</a>
				</li>
				<li class="active"><a href="About.jsp"><span
						class="glyphicon glyphicon-info-sign"></span> About us</a>
				</li>
				<li class="active"><a href="Contact.jsp"><span
						class="glyphicon glyphicon-envelope"></span> Contact us</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><span
						class="glyphicon glyphicon-log-in"></span> Login <span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a id="no" href="Owner.jsp"><span
								class="glyphicon glyphicon-user" style="color: blue"></span>
								Owner</a>
						</li>
						<li><a id="nm" href="Login.jsp"><span
								class="glyphicon glyphicon-user" style="color: red"></span>
								Shipping Manager</a>
						</li>
						<li><a id="no" href="seller.jsp"><span
								class="glyphicon glyphicon-user" style="color: green"></span>
								Seller</a>
						</li>
					</ul></li>

			</ul>
		</div>
	</div>
	</nav>

	<div class="container">
 <div class="row">
<div class="col-sm-4 " ><img src="raw/logo.png" class="img-responsive" id="l" ></div>
<div class="col-sm-7" ><h2 style="color:red">Notice:</h2><marquee direction="up" height="170" ><h3 style="color:yellow" > Hello all, there is going to be holiday on 02/12/2015 becuase it is my birthday and you are all invited for evening party at my home.</h3></marquee>
</div>
</div>

<br><br>
 <div class="row">
<div class="col-sm-2 " >
<a href="Login.jsp"><img src="raw/owner.png" class="img-responsive img-rounded" style="background-color: #ffdf1b "id="o" onClick="setCookie1()"></a></div>
<div class="col-sm-2 col-md-offset-1" >
<a href="Login.jsp"><img src="raw/mngr.png" class="img-responsive img-rounded" style="background-color: #ffdf1b " id="m" onClick="setCookie2()"></a></div>
<div class="col-sm-2 col-md-offset-1" >
<a href="Login.jsp"><img src="raw/seller.png" class="img-responsive img-rounded" style="background-color: #ffdf1b " id="s" onClick="setCookie3()"></a></div>
<div class="col-sm-2 col-md-offset-1" >
<a href="Contact.jsp"><img src="raw/contact.png" class="img-responsive img-rounded" style="background-color: #ffdf1b " id="c"></a></div>

</div>
</div>

</body>


</html>