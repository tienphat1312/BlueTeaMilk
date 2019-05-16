<%@ Page Title="ĐĂNG NHẬP" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebMACF.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        
         .dgn1{  
             border: none;
        border-bottom: 2px solid #808080;
        margin-top: 25px;
        margin-bottom:0px;
        border-radius: 5px;

         }
         /*.dgn1:focus{
             border: 3px solid #555;
         }*/
         .dgn {
             border: none;
             border-bottom: 2px solid #808080;
             margin-top: 0;
             margin-bottom: 5px;
              border-radius: 5px;
             
         }
          /*.dgn:focus{
             border: 3px solid #555;
         }*/

         .button{  
         -webkit-transition-duration: 0.4s; /* Safari */
         transition-duration: 0.4s;
        border: 2px solid #808080;
        border-radius: 8px;
     
         background-color: white;
         color: black;
        border: 2px solid #4CAF50;
      
        border-radius: 8px;
       
     
         }
         .txt{
              border: none;
             border-bottom: 2px solid red;
         }
    /*.button{border-radius: 15px; margin-top:25px;}

        .topDn{
     margin-bottom:10px;
    background-color:aqua;
     text-align:center; 
    padding-bottom:15px;
    padding-top: 15px;
     font-size:50px;
        }


        .auto-style13 {
            width: 202px;
            height: 179px;
        }


        .auto-style14 {
            margin-left: 0px;
        }
    .dgn{margin-top:15px;}
    .cenDn{height:200px;
           width: 500px;
           background-color: blanchedalmond;
           padding-top:20px;
           border-radius: 10px;     
    }*/

    .cenDn{
       margin-top: 15px;
            padding-top: 10px;
            text-align:center;
            height:300px;
            width:500px;
            background-color:deepskyblue;
            border-radius: 40px;
            padding-top: 15px;
            margin-bottom: 40px;    
            opacity: 0.7;

    }
    .w3-teal
    {
        border-radius: 10px;
    }
    </style>
 
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  


   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    
    <center>
        <div class="cenDn">
                <asp:TextBox  CssClass="dgn1" ID="txtTen" PlaceHolder =" Họ tên của bạn....." runat="server" Height="35px" Width="335px" Font-Size="20px" OnTextChanged="txtTen_TextChanged" ValidateRequestMode="Enabled" ></asp:TextBox>       
                <br />
             
             <br />
                <asp:TextBox CssClass="dgn" ID="txtMatkhau" PlaceHolder ="Mật khẩu..." TextMode="Password" runat="server"  Height="35px" Width="335px" Font-Size="20px"></asp:TextBox>
             <br />
            
                <br />

                <asp:Button class="w3-button w3-teal" Font-Names="Calibri " Font-Size="Larger" ID="btnDangnhap" runat="server" Height="55px" OnClick="BtnDangnhap_Click" style="text-align: center" Text="ĐĂNG NHẬP" Width="234px" />
&nbsp;<br />
&nbsp;<asp:Label ID="lbThongbao" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server"  OnClick="LinkButton1_Click"><a href = "DangKy.aspx" target ="_parent">Vui lòng đăng ký nếu chưa có tài khoản..</asp:LinkButton>
         </div></center>

</asp:Content>
