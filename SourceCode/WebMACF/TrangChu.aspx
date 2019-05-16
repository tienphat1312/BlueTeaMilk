<%@ Page Title="TRANG CHỦ" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebMACF.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" style="text/css" href= "App_Themes/THEMEtrchu/new.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <style type="text/css">
         }

     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
		<div id="mainleft">
			<div class="slideshow-container">
				<div class="mySlides fade">
				  
  					<img src="IMG_1/ts_khoailangtim.jpg" width="910px" height="450px">
  					
				</div>

				<div class="mySlides fade">
				  
  					<img src="IMG_1/tratcnd.jpg" width="910px" height="450px" >
  					
  				</div>

				<div class="mySlides fade">
  					
  					<img src="IMG_1/suatuoi.jpg" width= "910px" height= "450px">
  					
				</div>

			</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
		</div>
		
		<div id="right">
			<p><b>__________ THỜI GIAN __________</b></p>
			<p>- GIỜ MỞ CỬA: <u>8 GIỜ</u></p>
			<p>- GIỜ ĐÓNG CỬA: <u>22 GIỜ</u></p>
			<p>* MỞ TỪ <i>THỨ HAI</i> TỚI <i>CHỦ NHẬT</i> *</p>
			<p><b>________ HÂN HẠNH ________</b></p>
			<p>	<a href="https://www.facebook.com/" target ="_blank"class="fa fa-facebook"></a>
                <a href="DangNhap.aspx" target ="_blank"class="fa fa-sign-in" aria-hidden="true"></a>
				<a href="https://instagram.com" target ="_blank"class="fa fa-instagram"></a>
				


			</p>
		</div>
	</div>

<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 3000);
    }
</script>	
<script src="jq/jquery-3.2.1.min.js"></script>
</asp:Content>
