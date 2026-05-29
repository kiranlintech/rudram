<%@ page language="java" import="java.sql.*"%>
<%@page language="java" import="java.util.ArrayList,java.util.Hashtable,java.util.Vector,java.util.Enumeration,java.util.Properties,java.io.FileInputStream"%>
<%
String strUserid=(String)session.getAttribute("sesBatteryOperatorName");
if(strUserid==null)
{
	strUserid="";
}
String sesErrorMsg=(String)session.getAttribute("sesErrorMsg");
if(sesErrorMsg==null)
{
	sesErrorMsg="";
}
else
{
	session.removeAttribute("sesErrorMsg");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>Staffrex - OperatorLogin</title>

<!-- Fav Icon -->
<link rel="icon" href="../assets/images/favicon.ico" type="image/x-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Titillium+Web:300,300i,400,400i,600,600i,700,700i,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">

<!-- Stylesheets -->
<link href="../assets/css/font-awesome-all.css" rel="stylesheet">
<link href="../assets/css/flaticon.css" rel="stylesheet">
<link href="../assets/css/owl.css" rel="stylesheet">
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<link href="../assets/css/jquery.fancybox.min.css" rel="stylesheet">
<link href="../assets/css/animate.css" rel="stylesheet">
<link href="../assets/css/color/theme-color.css" id="jssDefault" rel="stylesheet">
<link href="../assets/css/switcher-style.css" rel="stylesheet">
<link href="../assets/css/style.css" rel="stylesheet">
<link href="../assets/css/responsive.css" rel="stylesheet">

</head>

<div id="success_modal" class="modal" tabindex="-1" role="dialog" style="display:none;top: 25%;padding: 0px">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" style="color: white;">Modal title</h5>
        <button type="button" name= "close_button" class="close" data-dismiss="modal" aria-label="Close" style="color: white;">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" name="close_button" class="btn btn-primary" data-dismiss="modal" style="background: #025497;">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- page wrapper -->
<body class="boxed_wrapper">

    <!-- preloader -->
    <div class="preloader">
        <div class="boxes">
            <div class="box">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div class="box">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div class="box">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div class="box">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
    <!-- preloader end -->



  <!---################################## Header Include Starts  ################################------>
	<jsp:include page = "include_header.jsp" />
<!---################################## Header Include Ends  ################################------>

    <!-- contact-section -->
    <section class="contact-section" style="padding: 50px 0px 70px 0px;">
        <div class="auto-container" style="max-width: 550px;">
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 form-column">
                    <div class="form-inner">
                        <div class="sec-title left" style="margin-bottom: 0px;">             
                            <h2>Staffrex Backend Operator</h2>
                        </div>
                        <div class="error"><%=sesErrorMsg%></div>
                        <form name="operatorlogin" class="contact-form"> 
                            <div class="row clearfix">
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                                    <input type="text" id ="username" name="username" placeholder="Your Name" required="">
                                     <div id='username-error' style="display:none;"></div>
                                </div>
                               
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                                    <input type="text" id ="password" name="password" placeholder="Password" required="">
                                    <div id='password-error' style="display:none;"></div>
                                    
                                    
                                </div>
                            
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group message-btn">
                                    <button id="submit_button" class="theme-btn style-one" name="submit-form">Login</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- contact-section end -->


  <!---################################## Footer Include Starts  ################################------>
	<jsp:include page = "include_footer.jsp" />
<!---################################## Footer Include Ends  ################################------>


<!-- jequery plugins -->
<script src="../assets/js/jquery.js"></script>
<script src="../assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/owl.js"></script>
<script src="../assets/js/wow.js"></script>
<script src="../assets/js/validation.js"></script>
<script src="../assets/js/jquery.fancybox.js"></script>
<script src="../assets/js/appear.js"></script>
<script src="../assets/js/jquery.countTo.js"></script>
<script src="../assets/js/scrollbar.js"></script>
<script src="../assets/js/tilt.jquery.js"></script>
<script src="../assets/js/jQuery.style.switcher.min.js"></script>

<!-- map script -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-CE0deH3Jhj6GN4YvdCFZS7DpbXexzGU"></script>
<script src="../assets/js/gmaps.js"></script>
<script src="../assets/js/map-helper.js"></script>

<!-- main-js -->
<script src="../assets/js/script.js"></script>
<script>
$("#submit_button").click(function(){
	
	//alert(22);
	
	var username= $("#username").val();
	var password= $("#password").val();
	
	if(username=="")
	{
		//alert("please enter username");
		$("#username-error").html("<p style='color: red;'>Please Enter Your Name</p>");
		$("#username").focus();
		$("#username").addClass("error");
		$("#username-error").show();
		return false;
	}
	$("#username").removeClass("error");
	$("#username-error").hide();
	
	if(password=="")
	{
		//alert("please enter email");
		$("#password-error").html("<p style='color: red;'>Please Enter Your Email Id</p>");
		$("#password").focus();
		$("#password").addClass("error");
		$("#password-error").show();
		return false;
	}
	
	$("#password").removeClass("error");
	$("#password-error").hide();
	
	
	//alert(username);
	//alert(password);
	//alert(subject);
	//alert(phone);
	//alert(message);

      $("#success_modal .modal-title").html("Pending")
      $("#success_modal .modal-body").html("<button class='btn btn-primary' style='background: none;border: none;color: #025497;font-size: 25px;font-weight: 600;''><span class='spinner-border spinner-border-sm' style='width: 4rem;height: 4rem;'></span><br>Please Wait While Validating.....</button>");
      $("#success_modal .modal-footer").hide();
      $("#success_modal").modal("show");
      
  	document.operatorlogin.method="post";
	document.operatorlogin.action="../BackendLogin?hidWhatToDo=checklogin";
	//alert(document.operatorlogin.action+"document.operatorlogin.action");
	document.operatorlogin.submit();
      
	  /*$.ajax({
		 url: "../BackendLogin?hidWhatToDo=checklogin", 
		 type: "POST",
		 data: {username:username,password:password},
		 success: function(result){
		    	alert(result);
		        $("#success_modal .modal-title").html("Success");
		        $("#success_modal .modal-body").html(result);
		        $("#success_modal .modal-footer").show();
		        $("#success_modal").modal("show");
		 	}
		 
	  	});*/
	});
	
	
	
$('[name="close_button"]').click(function(){
	
	//location.reload(true);
	//alert(22);
	location.href = "index.jsp";
	//$('#contact-form')[0].reset();
	
});
</script>


</body><!-- End of .page_wrapper -->
</html>
