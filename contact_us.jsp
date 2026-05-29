<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>Contact Us - RudramSanatnam</title>

<!-- Fav Icon -->
<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Titillium+Web:300,300i,400,400i,600,600i,700,700i,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">

<!-- Stylesheets -->
<link href="assets/css/font-awesome-all.css" rel="stylesheet">
<link href="assets/css/flaticon.css" rel="stylesheet">
<link href="assets/css/owl.css" rel="stylesheet">
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/jquery.fancybox.min.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet">
<link href="assets/css/color/theme-color.css" id="jssDefault" rel="stylesheet">
<link href="assets/css/switcher-style.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/responsive.css" rel="stylesheet">

</head>


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
	<jsp:include page = "assets/jsp/include_header.jsp" />
<!---################################## Header Include Ends  ################################------>

    <!--Page Title-->
    <section class="page-title" style="padding: unset;">
        <div class="auto-container">
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12 col-sm-12 content-column">
                    <div class="content-box clearfix">
                        <div class="title pull-left">
                            <h1>Contact Us</h1>
                        </div>
                        <ul class="bread-crumb pull-right clearfix">
                            <li><a href="index.jsp">Home</a></li>
                            <li>Contact Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Page Title-->
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

    <!-- contact-section -->
    <section class="contact-section">
        <div class="auto-container">
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12 col-sm-12 form-column">
                    <div class="form-inner">
                        <div class="sec-title left">
                            <p>What We Do</p>
                            <h2>Yoga,Meditation and Spiritual Teachings</h2>
                            <span class="separator"></span>
                        </div>
                        <div id="contact-form" class="contact-form"> 
                            <div class="row clearfix">
                                <div class="col-lg-6 col-md-12 col-sm-12 form-group">
                                    <input type="text" id ="username" name="username" placeholder="Your Name" required="">
                                     <div id='username-error' style="display:none;"></div>
                                </div>
                               
                                <div class="col-lg-6 col-md-12 col-sm-12 form-group">
                                    <input type="email" id ="email" name="email" placeholder="Email" required="">
                                    <div id='email-error' style="display:none;"></div>
                                    
                                    
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 form-group">
                                    <input type="text" id="city"  name="subject" placeholder="City" required="">
                                    <div id='city-error' style="display:none;"></div>
                                    
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 form-group">
                                    <input type="text" id ="phone" name="phone" placeholder="Phone" required="">
                                    <div id='phone-error' style="display:none;"></div>
                                    
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                                    <textarea id="message" name="message" placeholder="Message" required=""  style="margin: 0px;"></textarea>
                                    <div id='message-error' style="display:none;"></div>
                                    
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 form-group hide">
                                   <input type="file" id="myFile" name="filename" required="">
                                   <div id='myfile-error' style="display:none;"></div>
                                   
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group message-btn">
                                    <button id="submit_button" class="theme-btn style-one" name="submit-form">Register Now</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12 form-column">
                    <div class="info-inner">
                        <div class="sec-title left">
                            <p>Contact Info</p>
                            <h2>Contact Us </h2>
                            <span class="separator"></span>
                        </div>
                        <ul class="info-box clearfix"> 
                            <li>
                                <div class="icon-box"><i class="flaticon-call"></i></div>
                                <h5>Phone No.</h5>
                                <p><a href="tel:447423270486">+91 63094 90229</a></p>
                            </li>
                            <li>
                                <div class="icon-box"><i class="flaticon-circular-clock"></i></div>
                                <h5>Working Hours</h5>
                                <p>6:00 AM to 10:00 PM</p>
                            </li>
                            <li>
                                <div class="icon-box"><i class="flaticon-worldwide"></i></div>
                                <h5>Address</h5>
                                <p>Neem Gardens, <br>Chittoor - 517001, Chittoor dist.<br> Andhra Pradesh.
                                <br />
            E-mail: <a href="mailto:info@rudramsanatanam.org">info@rudramsanatanam.org</a><br />
            Website: <a href="http://rudramsanatanam.org/" target="_blank">www.rudramsanatanam.org</a></p>
                            </li>
                        </ul>
                        <div class="follow-box">
                            <h5>Follow Us:</h5>
                            <ul class="social-links clearfix">
                                <li><a href="https://www.facebook.com/profile.php?id=61551564290393"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="https://www.linkedin.com/company/78772820/admin/"><i class="fab fa-linkedin"></i></a></li>
                                <li><a href="https://bit.ly/3Nts3DI"><i class="fab fa-whatsapp"></i></a></li>
                                <li><a href="https://instagram.com/staffrex_recruitment?igshid=OGQ5ZDc2ODk2ZA=="><i class="fab fa-instagram"></i></a></li>
                                <li><a href="https://youtube.com/@StaffrexRecruitmentLimit-od4pr?si=1aOCWBwBbTbQmUZG"><i class="fab fa-youtube"></i></a></li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- contact-section end -->


    <!-- google-map-section -->
    <section class="google-map-section hide">
        <div class="auto-container">
            <div class="map-column">
            <div>
            <h2 style="padding: 15px 0px;">Locate Us</h2>
          </div>
                <div class="row">
        <div class="col-sm-8 col-md-8 col-lg-8 col-xs-12"> <iframe class="google-map2" frameborder="0" width="100%" height="300px" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2165.2356784868784!2d-2.215075984544398!3d57.13303269216518!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48841126a77804cf%3A0xe0d492a27311603e!2s27%20Fern%20Cres%2C%20Aberdeen%20AB15%208NZ%2C%20UK!5e0!3m2!1sen!2sin!4v1680946693435!5m2!1sen!2sin"></iframe> </div>

        
        <div class="col-sm-4 col-md-4 col-lg-4 col-xs-12">
         <h4 class="caps">Address</h4>
          <ul>
            <li><h4> <strong>Rudram Santanam Foundation.</strong><br /> </h4>
			Neem Gardens, <br />
			Chittoor,<br />
            E-mail: <a href="mailto:info@rudramsanatanam.org">info@rudramsanatanam.org</a><br />
            Website: <a href="http://rudramsanatanam.org/" target="_blank">www.rudramsanatanam.org</a> </li>
          </ul>
         
        </div>
        </div>
            </div>
        </div>
    </section>
    <!-- google-map-section end -->






  <!---################################## Footer Include Starts  ################################------>
	<jsp:include page = "assets/jsp/include_footer.jsp" />
<!---################################## Footer Include Ends  ################################------>


<!-- jequery plugins -->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/owl.js"></script>
<script src="assets/js/wow.js"></script>
<script src="assets/js/validation.js"></script>
<script src="assets/js/jquery.fancybox.js"></script>
<script src="assets/js/appear.js"></script>
<script src="assets/js/jquery.countTo.js"></script>
<script src="assets/js/scrollbar.js"></script>
<script src="assets/js/tilt.jquery.js"></script>
<script src="assets/js/jQuery.style.switcher.min.js"></script>

<!-- map script -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-CE0deH3Jhj6GN4YvdCFZS7DpbXexzGU"></script>
<script src="assets/js/gmaps.js"></script>
<script src="assets/js/map-helper.js"></script>

<!-- main-js -->
<script src="assets/js/script.js"></script>
<script>
$("#submit_button").click(function(){
	
	//alert(22);
	
	var username= $("#username").val();
	var email= $("#email").val();
	var subject= $("#subject").val();
	var phone= $("#phone").val();
	var message= $("#message").val();
	
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
	
	if(email=="")
	{
		//alert("please enter email");
		$("#email-error").html("<p style='color: red;'>Please Enter Your Email Id</p>");
		$("#email").focus();
		$("#email").addClass("error");
		$("#email-error").show();
		return false;
	}
	
	$("#email").removeClass("error");
	$("#email-error").hide();
	
	if(subject=="")
	{
		//alert("please enter email");
		$("#subject-error").html("<p style='color: red;'>Please Enter Your Subject</p>");
		$("#subject").focus();
		$("#subject").addClass("error");
		$("#subject-error").show();
		return false;
	}
	
	$("#subject").removeClass("error");
	$("#subject-error").hide();
	
	if(phone=="")
	{
		//alert("please enter email");
		$("#phone-error").html("<p style='color: red;'>Please Enter Your Mobile Number</p>");
		$("#phone").focus();
		$("#phone").addClass("error");
		$("#phone-error").show();
		return false;
	}
	
	$("#phone").removeClass("error");
	$("#phone-error").hide();
	
	if(message=="")
	{
		//alert("please enter email");
		$("#message-error").html("<p style='color: red;'>Please Enter Your Message</p>");
		$("#message").focus();
		$("#message").addClass("error");
		$("#message-error").show();
		return false;
	}
	
	$("#message").removeClass("error");
	$("#message-error").hide();
	
	//alert(username);
	//alert(email);
	//alert(subject);
	//alert(phone);
	//alert(message);

      $("#success_modal .modal-title").html("Pending")
      $("#success_modal .modal-body").html("<button class='btn btn-primary' style='background: none;border: none;color: #025497;font-size: 25px;font-weight: 600;''><span class='spinner-border spinner-border-sm' style='width: 4rem;height: 4rem;'></span><br>Please Wait While Registering.....</button>");
      $("#success_modal .modal-footer").hide();
      $("#success_modal").modal("show");
	  $.ajax({
		 url: "SendEmail?hidWhatToDo=sendmail", 
		 type: "POST",
		 data: {subject:subject,message:message,email:email,phone:phone,username:username},
		 success: function(result){
		    //alert(result);
		        $("#success_modal .modal-title").html("Success");
		        $("#success_modal .modal-body").html(result);
		        $("#success_modal .modal-footer").show();
		        $("#success_modal").modal("show");
		 	}
		 
	  	});
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
