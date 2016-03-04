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
<link rel="stylesheet" type="text/css"
	href="style/css/bootstrap-select.css">
<script type="text/javascript" src="style/js/bootstrap-select.js"></script>
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
						class="glyphicon glyphicon-home"></span> Home</a></li>
						<li class="active"><a href="Sellerh.jsp"><span
						class="glyphicon glyphicon-print"></span> Create SO </a></li>
						<li class="active"><a href="SuSO.jsp"><span
						class="glyphicon glyphicon-floppy-saved"></span> Update or cancel SO</a></li>
							<li class="active"><a href="SuCus.jsp"><span
						class="glyphicon glyphicon-floppy-saved"></span>Update Customer Record</a></li>
				<li class="active"><a href="SdSO.jsp"><span
						class="glyphicon glyphicon-floppy-saved"></span>display SO</a></li>
							<li class="active"><a href="SdCus.jsp"><span
						class="glyphicon glyphicon-floppy-saved"></span>Display Customer Record</a></li>
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
	
		<div class="container" style="color: yellow">
	
	
					<form class="form-signin" method="post" action="SO">
		<div class="row">
				<div class="col-md-4 ">

				<h4 class="text-center login-title" style="color: yellow">Enter PO to Search</h4></div>
						<div class="col-md-4 ">
				
					 <input type="text" name="poid" class="form-control"
							placeholder="PO ID" required autofocus>
		</div>
									<div class="col-md-4 ">
							
					<button class="btn btn-lg btn-primary btn-block" type="">
							Search</button>
					
					</div></div>				
					
	
	
		<div class="container" style="color: yellow">
	
	
					<form class="form-signin" method="post" action="">
		<div class="row">
			<div  class="col-md-8 col-md-offset-2">

				<h4 class="text-center login-title" style="color: yellow">Create SO</h4>
		
					
					</div></div>				
					<div class="row">
					<%@ page autoFlush='true' language='java' import='java.sql.*'
			import='model.DbOp' import='java.util.ArrayList' import=' java.util.Iterator'%>
		
					
					

							<%
							ArrayList<String> arrlst = new ArrayList<String>();		
							
							
			try {
		
				DbOp op = new DbOp();
				ResultSet rs = op.popitm();
				
				while(rs.next()){
				arrlst.add(rs.getString(1));
				%><div class="col-md-4 ">
						<label class="control-label" for="selectbasic">Select <%=rs.getString(1)%></label> <br> <select id="selectbasic" name="<%=rs.getString(1)%>"
							class="selectpicker show-tick form-control"
							data-live-search="true"  data-style="btn-warning" >
							  
							  <option value="default" >Select one--</option>
							  <%
							  ResultSet rs2 = op.popitmpo2(rs.getString(1));
							  
							  
							  %>
							<%while(rs2.next()){ %><option  value=<%=rs2.getString(1)+"#"+rs2.getString(8)%>><%=rs2.getString(3)%> <%=rs2.getString(4)%></option>
				<%} %>
				
				
							</select>
							</div> 
						<%
				
				
				}
				}catch (Exception e) {

					out.println("<b>pending final product -----------------</b>");
				}%>
				
				
				
			</div>
			
			<div class="row">
		<div class="col-md-2 ">
		<br>
					<input type="text" name="wrnty" class="form-control"
							placeholder="warranty"  required autofocus>
				</div>
					
				
		<div class="col-md-2 ">

					<!-- <label class="control-label" for="selectbasic">Service Charge</label> --> <br>
					<input type="text" name="srvc" class="form-control"
							placeholder="Service Charge"  required autofocus>
				</div>
					
	
			<br><div class="col-md-2 ">

					
						<input type="text" name="qtty" class="form-control"
							placeholder="Enter Quantity" required autofocus>
				</div>


		<div class="col-md-3 ">

				
							<button class="btn btn-lg btn-primary btn-block" type="submit" name="calculate">
							Calculate Amount</button>
				</div>
						<div class="col-md-3 ">

			
				<%Iterator<String> iterator;
							ArrayList<String> arrlstcln;
							float srvs,total=0, prct=0, qtty;
				if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("calculate") != null) {
	
	 iterator = arrlst.iterator();
	 arrlstcln = new ArrayList<String>();
	 srvs=Float.parseFloat(request.getParameter("srvc"));
	 qtty =Float.parseFloat(request.getParameter("qtty"));
	 total=0; prct=0;
	while (iterator.hasNext()) {
		//System.out.println(iterator.next());
		String prc=request.getParameter(iterator.next());
		System.out.println(prc);
		if(!prc.equals("default")){
			 System.out.println("hahaha"); 
			 String[] price=prc.split("#");
			prct=Float.parseFloat(price[1]);
			 System.out.println(prct);
			 total=total+prct;
			 System.out.println(total);
			}
	
		
		
		}total=(total+srvs)*qtty;%>	 
					 <input type="text" name="tamnt" class="form-control"
							placeholder="85730"<%-- <%=total%> --%> disabled required autofocus> 
		
	<%-- 
		<h1><%=total%> Rupees </h1>  --%>
	

 <%
				}else{
%>
	 		
				
					<input type="text" name="tamnt" class="form-control"
							placeholder="85730" disabled required autofocus> <%} %> 
				</div>
			</div>
			
			
			
						<div class="row">
			<div  class="col-md-8 col-md-offset-2">

				<h4 class="text-center login-title" style="color: yellow">Enter Customer Detail</h4>
		
					
					</div></div>
			
			
						<div class="row">
				<div class="col-md-4 ">
 
						<input type="text" name="fn" class="form-control"
							placeholder="Enter First name" >
				</div>


		<div class="col-md-4 ">

					 
						<input type="text" name="ln" class="form-control"
							placeholder="Enter Last name">
				</div>
						<div class="col-md-4 ">

					 <input type="text" name="Mob" class="form-control"
							placeholder="Enter Mob No.">
				</div>
			</div>
		<br>
							<div class="row">
			<div  class="col-md-2 col-md-offset-2">

				
							<button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">
							Cancel PO</button>
					 
					
					</div>
					<div  class="col-md-2 col-md-offset-1">

				
							<button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">
							Update PO</button>
					 
					
					</div><div  class="col-md-2 col-md-offset-1	">

				
							<button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">
							Mark As Sold</button>
					 
					
					</div>
					</div>	
					
					</form>
	</div>

<%-- <%if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("calculate") != null) {
	
	Iterator<String> iterator = arrlst.iterator();
	ArrayList<String> arrlstcln = new ArrayList<String>();
	float srvs=Float.parseFloat(request.getParameter("itm"));
	int qtty = Integer.parseInt(request.getParameter("itm"));

	while (iterator.hasNext()) {
		System.out.println(iterator.next());
		String prc=request.getParameter(iterator.next());
		float total=0, temp,prct;
		if(!prc.equals("default")){
			 prct=Float.parseFloat(prc);
			total=total+prct;
			}
		
		
		
		}
	
}
%> --%>
<%-- <% 	
	int itm = Integer.parseInt(request.getParameter("itm"));
	int sup = Integer.parseInt(request.getParameter("sup"));
	int amnt = Integer.parseInt(request.getParameter("amnt"));
	int qtty = Integer.parseInt(request.getParameter("qtty"));

	
	DbOp op = new DbOp();
	if(op.OcPO(itm,sup,amnt,qtty)){
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Record Successfully Added!!!');");
			 out.println(" window.history.back();");
				 out.println("</script>");
	}
	else{
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Record is Already there, try again!!!');");
			 out.println(" window.history.back();");
				 out.println("</script>");
	}

   
 %> --%>



	
	</body>
</html>
