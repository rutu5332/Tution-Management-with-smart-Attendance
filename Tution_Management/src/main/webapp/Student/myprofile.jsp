
<!DOCTYPE html>
<html>
<head>



<title>Tuition Management</title>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link href="../Assests/css/myprofile.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link href="../Assests/css/updateprofile.css" rel="stylesheet">
<link href="../Assests/css/changepswd.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../Assests/css/plugins/social-buttons.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="../Assests/css/smartech.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="../Assests/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="../Assests/css/bootstrap.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

</head>

<body style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">

	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
	</div>

	<br>
	<br>
	<%
	
	/* String mail=session.getAttribute("userEmail").toString(); 
	
	String fnm="",lnm="",id="",mno="",des="",rpass="",img="../images/";

	//if(uid==null)
	//{
		//response.sendRedirect("login.jsp");
	//}
	Data dt =new Data();
	try
	{
		dt.st=dt.cn.createStatement();
        String select="select * from user where email='"+mail+"' ";
       
        dt.rs=dt.st.executeQuery(select);
        
        while(dt.rs.next())
        {
	        img+=dt.rs.getString("id")+"-1.jpg";
	        fnm=dt.rs.getString("fname");
	        lnm=dt.rs.getString("lname");
	        id=dt.rs.getString("id");
	        mno=dt.rs.getString("mobileNo");
	        des=dt.rs.getString("designation");
	        rpass=dt.rs.getString("password");
        }
        
	}
	catch(Exception ex)
	{
		System.out.println(ex);
	}  */
	

%>
<div id="popup1" class="overlay">
	<div class="popup">
		<a class="close" href="#" style="background-color: salmon">&times;</a>
		<div id="dialog" class="window">

			<div class="box">
				<div class="newletter-title">
					<h2 style="color: #ef4238;">Change your password</h2>
				</div>
				<div class="box-content newleter-content">

					<div id="frm_subscribe">
						<form name="subscribe" id="subscribe_popup" method="post"
							action="changepswd.jsp">
							<div>

								<input type="password" name="oldpsw" id="oldpsw"
									placeholder="old password"> <br> <span
									id="errorold" style="color: red;"> <%
                            							String msg;
                            							msg=request.getParameter("msg");
					                            		if(msg!=null)
					                            		{
					                            			out.write("<script>");
					                            			   out.write("alert(\"Please do again..Old Password is incorrect" + "\")");
					                            			   out.write("</script>"); 
					                            		}
					                            		%>
								</span> <br> <input type="password" name="password" id="password"
									placeholder="new password"><br> <span
									id="errorpswd" style="color: red;"></span> <br> <input
									type="password" name="cpassword" id="cpassword"
									placeholder="confirm password"><br> <span
									id="errorcpsw" style="color: red;"></span>
								<input type="hidden" name="old" id="old" value=<%//rpass %>>
								<div id="notification"></div>
								<br> <input type="button" onclick="checkJS_Pass()"
									class="button" value="SUBMIT"
									style="background-color: #fff; color: #ef4238; font-weight: bolder; height: 40px; width: 120px;">

							</div>
						</form>

					</div>
					<!-- /#frm_subscribe -->
				</div>
				<!-- /.box-content -->
			</div>
		</div>
	</div>
</div>
	<%-- <div id="popup1" class="overlay">
		<div class="popup">
			<a class="close" href="#" style="background-color: salmon">&times;</a>
			<div id="dialog" class="window">

				<div class="box">
					<div class="newletter-title">
						<h2 style="color: #ef4238;">Change Profile Picture</h2>
					</div>
					<div class="box-content newleter-content">

						<div id="frm_subscribe">
							<form name="changeImg" id="changeImg" method="post"
								action="../changeImage" enctype="multipart/form-data">
								<div>
									<br>
									<br> <input type=hidden name="uid" id="uid" value=<%=id %>>
									<div class="row mb-3" style="display: initial;">
										<div class="col-sm-10" style="text-align: center;">
											<h3 class="mb-0">Select Image</h3>
										</div>
										<br>
										<br>
										<br>
										<br>
										<div class="col-sm-10 text-secondary">
											<input type="file" class="form-control" name="img1" id="img1">
											<span id="img1-error" style="color: red; font-size: 12px;"></span>
										</div>
									</div>

									<br>
									<br>
									<div id="notification"></div>
									<br> <input type="submit" onclick="checkJS()"
										class="button" value="SUBMIT"
										style="background-color: #fff; color: #ef4238; font-weight: bolder; height: 40px; width: 120px;">
									<br>
									<br>
									<br>
								</div>
							</form>

						</div>
						<!-- /#frm_subscribe -->
					</div>
					<!-- /.box-content -->
				</div>
			</div>
		</div>
	</div> --%>
	<div class="container">
		<div class="main-body">
			<div class="row gutters-sm">
				<div class="col-md-4 mb-3">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<br> <img src="<%/* =img */%>" alt="Student"
									class="rounded-circle" width="150">
								<div class="mt-3">
									<h4>
										<%//out.println(fnm ); %>
									</h4>

									<hr>
									<button class="btn btn-primary"
										onclick="location.href ='monthlyattendance.jsp'">Monthly
										Attendance</button>
									<hr>
									<button class="btn btn-primary"
										onclick="location.href ='#popup1'">Change
										Password</button>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-md-8">
					<div class="card mb-3">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3">
									<h5 class="mb-0">Student Id</h5>
								</div>
								<div class="col-sm-9 text-secondary">
									<%/* out.println(id); */%>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h5 class="mb-0">Full Name</h5>
								</div>
								<div class="col-sm-9 text-secondary">
									<%/* out.println(fnm+" "+lnm); */%>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h5 class="mb-0">Email</h5>
								</div>
								<div class="col-sm-9 text-secondary">
									<%/* out.println(mail); */ %>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h5 class="mb-0">Class</h5>
								</div>
								<div class="col-sm-9 text-secondary">12</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h5 class="mb-0">Mobile</h5>
								</div>
								<div class="col-sm-9 text-secondary">
									<%/* out.println(mno); */%>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h5 class="mb-0">Parent Name</h5>
								</div>
								<div class="col-sm-9 text-secondary">Mr. XYZ</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h5 class="mb-0">Parent Email</h5>
								</div>
								<div class="col-sm-9 text-secondary">
									<%/* out.println("Parent"+mail); */%>
								</div>
							</div>
							<hr>

							<div class="row">
								<div class="col-sm-3">
									<h5 class="mb-0">Parent Mobile</h5>
								</div>
								<div class="col-sm-9 text-secondary">
									<%/* out.println(mno); */%>
								</div>
							</div>

							<hr>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery Version 1.11.0 -->
	<script src="js/jquery-1.11.0.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script>

function checkJS()
{
	var img=$('#img1').val();
	var ext=img.substr(img.indexOf('.')+1);
	if(img == ""){
		$("#img1-error").html("* Please Select Image.");
		$('#img1').css('border', '1px solid red');
		changeImg.img1.focus();
		return false;
	}
	else if(!(ext == "jpeg" || ext == "jpg" )){
		$("#img1-error").html("* Please Select jpeg/jpg Images.");
		$('#img1').css('border', '1px solid red');
		changeImg.img1.focus();
		return false;
	}
	else{
		$('#img1-error').html('');
		$('#img1').css('border-color', '');
	}
}

function checkJS_Pass()
{
	
	
		var code=$("#oldpsw").val();
		var opass=$("#old").val();
		var npsw=$("#password").val();
		var cpsw=$("#cpassword").val();
		var re = /[0-9]+/;
		var re2 = /[a-z]+/;
		var re3 = /[A-Z]+/;
		
		 if(code==''){
			$('#errorold').html('please enter old password');
			subscribe.oldpsw.focus();
			return false;
		}
		 else if(opass != code){
			 $('#errorold').html('Wrong Old Password.');
			subscribe.oldpsw.focus();
			return false;
		 }
		 else
			{
				$('#errorold').html('');
			}
		 
		 if(npsw==''){
				$('#errorpswd').html('please enter new password');
				subscribe.password.focus();
				return false;
			}
		else if((npsw.length)<8)
		{
			$('#errorpswd').html('minimum 8 characters required');
			subscribe.password.focus();
			return false;
		}
	   	else if(!re.test(npsw)) 
	  	{
	   		$('#errorpswd').html('at least one number(0-9) required');
		        subscribe.password.focus();
		        return false;
    	}
	      	
	      	
	    else if(!re2.test(npsw)) 
	  	{
	    	$('#errorpswd').html('at least one lowercase letter(a-z) required');
	    	subscribe.password.focus();
		        return false;
		 }
	      	
	    else if(!re3.test(subscribe.password.value)) 
	  	{
	    	$('#errorpswd').html('at least one uppercase letter(A-Z) required');
	    	subscribe.password.focus();
	        	return false;
    	}
		else
		{
			$('#errorpswd').html('');
		}
		 
		if(cpsw=='')
		{
			$('#errorcpsw').html('please enter confirm password');
			subscribe.cpassword.focus();
			return false;
		}
		else if(npsw!=cpsw)
		{
			$('#errorcpsw').html("password mismatch");
			subscribe.cpassword.focus();
			return false;
		}
		else
		{
			$('#errorcpsw').html('');
		}
		
		window.location.href="changepswd.jsp?oldpsw="+code+"&password="+cpsw;					
}
</script>
</body>
</html>