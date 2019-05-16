<%@ Page Title="TIN TỨC" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="WebMACF.TinTucc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        #ContentPlaceHolder1_dtlTin_Label1_0{

            
        }
        .mainC{
            margin-bottom:20px;
            height: 100%;
            width: 80%;
            background-color:aqua;
            border-radius:10px;
          
        }

        #ContentPlaceHolder1_dtlTin{
            margin-left: -200px;
           
        }

        #ContentPlaceHolder1_dtlTin_Image1{
            border: 2px solid #ff0000;
        }

        .auto-style1 {
            width: 100%;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="toptextC">
        <p class="auto-style3">
            <b>TIN TỨC KHUYẾN MÃI</b></p>
    </div>
	<div id="topC" class="auto-style4">
		<div id="leftTopC">
		
		<p><b>Ở đây bạn có thể xem những tin tức và khuyến mãi mới nhất của Blue Tea !</b></p>
            HÃY CÙNG ĐÓN XEM NHÉ !!
		 </div>
		<div id="rightTopC">
			<img src="IMG_1\Untitled.png" width="550px" height="130px">
		</div>
	</div>
	<center><div class="mainC">
        <asp:DataList runat="server" ID="dtlTin">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style1">
                    <tr>
                        <td rowspan="2">
                            <asp:Image ID="Image1" runat="server" Height="129px" ImageUrl='<%# "~/IMG_1/"+Eval("Hinh") %>' Width="152px" />
                        </td>
                        <td>&nbsp;&nbsp; <strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TieuDe") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp; <em>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("NoiDung") %>'></asp:Label>
                            </em></td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </ItemTemplate>
        </asp:DataList>    </div></center>     
	</asp:Content>
