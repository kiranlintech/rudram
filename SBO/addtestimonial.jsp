<%@ page language="java" import="java.sql.*"%>
<%@page language="java" import="java.util.ArrayList,java.util.Hashtable,java.util.Vector"%>
<%response.setHeader("Pragma","no-cache");  
response.setHeader("Cache-Control","no-store");  
response.setHeader("Expires","0");  
response.setDateHeader("Expires",-1);  
%>
<%
String strUserid=(String)session.getAttribute("sesBatteryOperatorName");
if(strUserid==null)
{
	strUserid="";
	session.setAttribute("sesErrorMsg","Session Timed Out. Please login again");
	response.sendRedirect("index.jsp");
	return;
}
String strLogMsg=(String)session.getAttribute("sesErrorMsg");
if(strLogMsg==null)
{
	strLogMsg="";
}
else
{
	session.removeAttribute("sesErrorMsg");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Staffrex Operator - Add Testimonial</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/css/jquery.fancybox.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
  

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.5.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<div id="success_modal" class="modal" tabindex="-1" role="dialog" style="display:none;top: 25%;padding: 0px">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background: #025497;">
        <h5 class="modal-title" style="color: white;">Modal title</h5>
        <button type="button" name= "close_button" class="close" data-dismiss="modal" aria-label="Close" style="color: white;background: #025497;border: none;font-size: 25px;">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="text-align: center;">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" name="close_button" class="btn btn-primary" data-dismiss="modal" style="background: #025497;">Close</button>
      </div>
    </div>
  </div>
</div>
<body>

  <!---################################## Header Include Starts  ################################------>
	<jsp:include page = "jsp/main_header.jsp" />
<!---################################## Header Include Ends  ################################------>


  <!---################################## Header Include Starts  ################################------>
	<jsp:include page = "jsp/main_sidebar.jsp" />
<!---################################## Header Include Ends  ################################------>


  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Add Testimonial</h1>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row center">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Enter Candidate Details</h5>

              <!-- Vertical Form -->
              <form id="testimonial_form" enctype="multipart/form-data" class="row g-3">
                <div class="col-lg-8 col-sm-12">
                  <label for="inputNanme4" class="form-label">Candidate Name</label>
                  <input type="text" class="form-control" name="candidate_name" id="candidate_name">
                  <div id='candidate_name-error' style="display:none;"></div>
                </div>
                <div class="col-lg-8 col-sm-12">
                  <label for="inputEmail4" class="form-label">Country</label>
                  <input type="text" class="form-control" name="candidate_country" id="candidate_country">
                  <div id='candidate_country-error' style="display:none;"></div>
                </div>
                <div class="col-lg-8 col-sm-12">
                  <label for="inputPassword4" class="form-label">Testimonial Content</label>
                  <textarea class="form-control" id= "testi_content" name="testi_content"  style="height: 100px"></textarea>
                   <div id='testi_content-error' style="display:none;"></div>
                </div>
                <div class="col-lg-8 col-sm-12">
                  <label for="inputNumber" class="form-label">Upload Image </label>
                 <input class="form-control" type="file" id="formFile" name="formFile">
                 <div id='formFile-error' style="display:none;"></div>
                </div>
                <div class="text-center">
                  <button id="submit_button" type="button" class="btn btn-primary">Submit</button>
                  <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
              </form><!-- Vertical Form -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Staffrex</span></strong>. All Rights Reserved
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/js/jquery.js"></script>
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/js/jquery.fancybox.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  <script>
  
  $(document).ready(function() {
  
	  $('#submit_button').click(function() {
		
	  //alert(22);
		var candidate_name= $("#candidate_name").val();
		var candidate_country= $("#candidate_country").val();
		var testi_content= $("#testi_content").val();
		var formFile= $("#formFile").val();
		
	      var name = $('#name').val();
	      var country = $('#country').val();
	      var description = $('#description').val();
	      var image = $('input[name="image"]').val();
		
		if(candidate_name=="")
		{
			//alert("please enter username");
			$("#candidate_name-error").html("<p style='color: red;'>Please Enter Your Name</p>");
			$("#candidate_name").focus();
			$("#candidate_name").addClass("error");
			$("#candidate_name-error").show();
			return false;
		}
		$("#candidate_name").removeClass("error");
		$("#candidate_name-error").hide();
		
		
		if(candidate_country=="")
		{
			//alert("please enter username");
			$("#candidate_country-error").html("<p style='color: red;'>Please Enter Your Country</p>");
			$("#candidate_country").focus();
			$("#candidate_country").addClass("error");
			$("#candidate_country-error").show();
			return false;
		}
		$("#candidate_country").removeClass("error");
		$("#candidate_country-error").hide();
		
		if(testi_content=="")
		{
			//alert("please enter username");
			$("#testi_content-error").html("<p style='color: red;'>Please Enter Candidate Review</p>");
			$("#testi_content").focus();
			$("#testi_content").addClass("error");
			$("#testi_content-error").show();
			return false;
		}
		$("#testi_content").removeClass("error");
		$("#testi_content-error").hide();
		
/* 		if(formFile=="")
		{
			//alert("please enter username");
			$("#formFile-error").html("<p style='color: red;'>Please Upload Candidate Image</p>");
			$("#formFile").focus();
			$("#formFile").addClass("error");
			$("#formFile-error").show();
			return false;
		}
		$("#formFile").removeClass("error");
		$("#formFile-error").hide(); */
		//alert($('#testimonial_form')[0]);
		var formData = new FormData($('#testimonial_form')[0]);
		//alert(formData);
		
		const obj = { 
				  candidate_name: "John Doe", 
				  candidate_country: "India", 
				  testi_content: "Tested by Bharath",
				  formFile:formFile
				};
		
	  
	 $.ajax({
			 url: "../Testimonial?hidWhatToDo=addtestimonial",
			 type: 'GET',
			 data: { 
				 	candidate_name: candidate_name, 
				 	candidate_country: candidate_country,
				 	testi_content: testi_content,
				 	formFile:formFile
			      },
			 	success: function(result){
			    	//alert(result);
			        $("#success_modal .modal-title").html("Success");
			        $("#success_modal .modal-body").html("<p style='font-size: 20px;margin: 0px;font-weight: 600;'>"+result+"</p>");
			        $("#success_modal .modal-footer").show();
			        $("#success_modal").modal("show");
			 	}
			 
			});
		
	});
  });
  
  $('[name="close_button"]').click(function(){
		
		//location.reload(true);
		//alert(22);
		location.href = "addtestimonial.jsp";
		//$('#contact-form')[0].reset();
		
	});
  
  
  </script>

</body>

</html>