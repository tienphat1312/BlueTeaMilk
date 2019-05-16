<%@ Page Title="PHẢN HỒI" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="WebMACF.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="App_Themes/THEMEtrchu/new.css">
    <style type="text/css">
        .auto-style3 {
            margin-left: 40px;
        }

        .mainC{
            margin-top: 15px;
            padding-top: 10px;
            text-align:center;
            height:100%;
            width:700px;
            background-color:#CCFFFF;
            border-radius: 40px;
            padding-top: 15px;
            margin-bottom: 20px;
             border: 2px solid aqua;
        }

        #ContentPlaceHolder1_txtHoten{margin-bottom:10px;border-radius: 5px}
        #ContentPlaceHolder1_txtSdt{margin-bottom:10px;border-radius: 5px}
        #ContentPlaceHolder1_txtEmail{margin-bottom:10px;border-radius: 5px}
        #ContentPlaceHolder1_txtNoidung{margin-bottom:10px;border-radius:5px}
        #ContentPlaceHolder1_btnGui{border-radius: 15px;
                                    background-color: aquamarine; text-align:center;        
        }
        .auto-style4 {
        height: 108px;
    }
       .dtlPH{
           height:100%;
           width: 47%;
           background-color: antiquewhite;
           
           border-radius:10px;
           padding-left: 30px;
           padding-bottom: 10px;
           margin-bottom: 20px;
           border: 2px solid green;
       }
        .auto-style5 {
            font-size: x-large;
        }
        .dtlBLL{
            margin-left: -200px;
        }
        .top-BL{
            height:50px;
            width: 20%;
            background-color: white;
            border: 1px solid antiquewhite;
            border-radius:40px;
            color: black;
            padding-top: 15px;
            margin-bottom: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="toptextC">
        <p class="auto-style3">
            <b>Liên hệ với chúng tôi</b></p>
    </div>
	<div id="topC" class="auto-style4">
		<div id="leftTopC">
		
		<p><b>Ý kiến của bạn tương đối quan trọng với chúng tôi !</b></p>
		 Vì bạn, Blue Tea sẽ trở nên tốt hơn, nếu có bất cứ vấn đề hoặc kiến nghị gì, kính mong điền ý kiến của bạn vào phiếu. Để tiện trả lời email cần phải điền đúng, cảm ơn bạn !</div>
		<div id="rightTopC">
			<img src="IMG_1\Untitled.png" width="550px" height="130px">
		</div>
	</div>
	<center><div class="mainC">
         <asp:Label ID="Label2" runat="server" Text=" Họ tên của bạn....."></asp:Label>    <br />     
        <asp:TextBox ID="txtHoten" PlaceHolder =" Họ tên của bạn....." runat="server" Height="40px" Width="454px" OnLoad="txtHoten_Load"></asp:TextBox>       
        <br /> 
        <asp:Label ID="Label3" runat="server" Text=" Số điện thoại....."></asp:Label>    <br />   
        <asp:TextBox ID="txtSdt"  PlaceHolder =" Số điện thoại....."  runat="server" Height="40px" Width="454px"></asp:TextBox>       
        <br /> 
        <asp:Label ID="Label4" runat="server" Text=" Email....."></asp:Label>    <br />   
        <asp:TextBox ID="txtEmail"  PlaceHolder =" Emai....."  runat="server" Height="40px" Width="454px"></asp:TextBox>
         <br /> 
        <asp:Label ID="Label5" runat="server" Text=" Ý kiến của bạn....."></asp:Label>    <br />   
         <%-- <asp:RadioButton ID="rdNam" runat="server" EnableTheming="True" Text="Nam" />
                    <asp:RadioButton ID="rdNu" runat="server" EnableTheming="True" Text="Nữ" />--%>
               
        <asp:TextBox ID="txtNoidung"  PlaceHolder =" Ý kiến của bạn....."  runat="server" Height="80px" Width="454px" TextMode="MultiLine"></asp:TextBox>
                    <br />          
                     <asp:Button ID="btnGui" runat="server" Font-Size="Larger" Height="61px" Text="Gửi" Width="454px" OnClick="btnGui_Click" />    
         <br />
          
	</div></center>
   <center> <div class="top-BL">PHẢN HỒI CỦA KHÁCH HÀNG</div></center>
    <center>
    <div class ="dtlPH">
        
        <asp:DataList CssClass="dtlBLL" ID="dtlPhanHoi" runat="server">
             <ItemTemplate>
                 _____________________________<br />
                 <span class="auto-style5"><strong>[</strong></span><asp:Label ID="Label6" runat="server" Text='<%# Eval("HoTen") %>' Font-Bold="True" Font-Size="15pt" ForeColor="Blue"></asp:Label>
                 <span class="auto-style5"><strong>]</strong></span><br />
                 <asp:Label ID="Label7" runat="server" Text='<%# Eval("NoiDung") %>'></asp:Label>
                 <br />
                 _____________________________
             </ItemTemplate>
         </asp:DataList>
            </div></center>
</asp:Content>
