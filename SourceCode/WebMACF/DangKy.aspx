<%@ Page Title="ĐĂNG KÝ" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WebMACF.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="App_Themes/THEMEtrchu/new.css">
     <style type="text/css">
         .auto-style1 {
             width: 100%;
         }
         .auto-style2 {
             text-align: right;
             height: 55px;
         }

         .button{
             border-radius:15px;
         }
         .auto-style9 {
             width: 790px;
             text-align: right;
             height: 50px;
         }
         .auto-style10 {
             height: 50px;
             width: 325px;
         }
         .auto-style13 {
             width: 790px;
             text-align: right;
             height: 54px;
         }
         .auto-style14 {
             height: 54px;
             width: 325px;
         }
         .auto-style17 {
             width: 790px;
             text-align: right;
             height: 44px;
         }
         .auto-style18 {
             height: 44px;
             width: 325px;
         }
         .auto-style19 {
             width: 790px;
             text-align: right;
             height: 25px;
         }
         .auto-style20 {
             height: 25px;
             width: 325px;
         }
         .auto-style21 {
             width: 790px;
             text-align: right;
             height: 47px;
         }
         .auto-style22 {
             height: 47px;
             width: 325px;
         }
         .auto-style23 {
             width: 790px;
             text-align: right;
             height: 36px;
         }
         .auto-style24 {
             height: 36px;
             width: 325px;
         }

         .cenDk{width: 450px;
                height: 470px;
                border-radius: 10px;
                background-color: beige;
                margin-top:17px;
                padding-top: 5px;
               
         }
         .auto-style25 {
             width: 790px;
             text-align: right;
             height: 38px;
         }
         .auto-style26 {
             height: 38px;
             width: 325px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><div class="cenDk">
    <table class="auto-style1">
        <tr>
            <td class="auto-style25">Họ và tên:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style26">
                <asp:TextBox ID="txtTen" runat="server" Height="32px" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Giới tính:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdbNam" runat="server" Checked="True" Text="Nam" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdbNu" runat="server" Text="Nữ" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Địa chỉ:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style22">
                <asp:TextBox ID="txtDiachi" runat="server" Height="32px" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">Điện thoại:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style24">
                <asp:TextBox ID="txtSdt" runat="server" Height="32px" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Email:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtEmail" runat="server" Height="32px" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Ngày sinh:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" OnLoad="DropDownList1_Load" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="46px">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                &nbsp;Tháng
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" OnLoad="DropDownList2_Load" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="40px">
                </asp:DropDownList>
                &nbsp;Năm
                <asp:DropDownList ID="DropDownList3" runat="server" Height="19px" OnLoad="DropDownList3_Load" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="60px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Tên tài khoản:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style18">
                <asp:TextBox ID="txtTentk" runat="server" Height="32px" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Mật khẩu:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style22">
                <asp:TextBox ID="txtMatkhau" TextMode="Password" runat="server" Height="32px" Width="260px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Nhập lại mật khẩu:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style18">
                <asp:TextBox ID="txtNhacmk" TextMode="Password" runat="server" Height="32px" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
               <center><asp:Button CssClass="button" ID="btnDangky" runat="server" Height="43px" OnClick="btnDangky_Click" Text="ĐĂNG KÝ" Width="120px" BackColor="Aqua" BorderColor="#0000CC" BorderStyle="Inset" Font-Bold="True" />
            &nbsp;
                <asp:Button CssClass="button" ID="lbLammoi" BackColor="#66ff66" runat="server" Height="43px" Text="LÀM MỚI" Width="120px" Font-Bold="True" OnClick="lbLammoi_Click" />
            </center></td>
        </tr>
    </table>
  </div></center>
</asp:Content>
