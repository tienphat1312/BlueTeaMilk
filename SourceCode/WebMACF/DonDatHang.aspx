<%@ Page Title="QUẢN LÝ ĐƠN ĐẶT HÀNG" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="WebMACF.DonDatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headAdmin" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>

        .gvDh
        {
            margin-top: 20px;
            background-color: aqua;
            width: 90%;
            border-top-left-radius: 30px;
            border-top-right-radius: 30px;
            border-bottom-left-radius: 150%;
            border-bottom-right-radius: 150%;
        }
        .top-label{
            height: 70px;
            width: 500px;
            background-color:darkturquoise;
            border-radius: 10px;
            margin-bottom:10px;
            padding-top: 15px;
            border-bottom-left-radius: 70%;
            border-bottom-right-radius: 70%;
            font-size: 30px;

            
        }

        .gvDONHANGG td{padding:10px; border:1px solid #808080; color: #444; font-size:small}
        .gvDONHANGG th{
                padding: 4px 2px; 
                    color:bisque;      
                    border: 1px solid #00ff21; font-size: large; text-align: center;}
         .gvDONHANGG th a{color:white;text-decoration:none;}
         .gvDONHANGG th a:hover{color:#444;text-decoration:none;}

        .auto-style3 {
            width: 54%;
            margin-bottom:20px;
            
        }
        .auto-style4 {
            width: 326px;
        }
        td.auto-style4{
            font-family: 'Times New Roman';
            font-size: 25px;
            font-style:normal;
            
        }
        .gvDONHANGG{
            margin-bottom:20px;
        }
        .auto-style6 {
            width: 186px;
        }
        .auto-style7 {
            width: 150px;
        }
        .ddlDDH
        {
            height:30px;
            width: 130px;
        }
        table.auto-style3{
           height: 80px;
        }
        /*.btnCNT{
            border-radius: 10px;
            font-size: 20px;
            font-family:Arial;
            background-color:blue;

        }*/
        .w3-button {width:150px;
                    border-radius:10px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMaster1" runat="server">
    <center><div class="gvDh">
        <div class="top-label"><asp:Label runat="server" Text="Label">QUẢN LÝ ĐƠN ĐẶT HÀNG</asp:Label></div>
 <br />
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Cập nhật tình trạng đơn hàng........</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlTTDH" runat="server" CssClass="ddlDDH">
                        <asp:ListItem>Đang xử lý</asp:ListItem>
                        <asp:ListItem>Đã xác nhận</asp:ListItem>
                        <asp:ListItem>Đang giao</asp:ListItem>
                        <asp:ListItem>Đã giao</asp:ListItem>
                        <asp:ListItem>HỦY</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Blue_TeaConnectionString %>" SelectCommand="SELECT [MaDh] FROM [DonDatHang]"></asp:SqlDataSource>
&nbsp;</td>
                <td class="auto-style6" rowspan="2">
                    <asp:Button class="w3-button w3-blue" ID="btnCapnhat" runat="server" Height="49px" Text="SAVE" Width="143px" OnClick="btnCapnhat_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mã đơn hàng.................................</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlIDSP" runat="server" DataSourceID="SqlDataSource1" DataTextField="MaDh" DataValueField="MaDh" CssClass="ddlDDH">
                    </asp:DropDownList>
                    </td>
            </tr>
        </table>
        <asp:GridView CssClass="gvDONHANGG" ID="gvDonhang" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowDeleting="gvDonhang_RowDeleting1" Width="1339px" DataKeyNames="MaDh" PageSize="5" OnSelectedIndexChanged="gvDonhang_SelectedIndexChanged" >
            <Columns>
                <asp:BoundField DataField="MaDh" HeaderText="Mã ĐH" />
                <asp:BoundField DataField="NgayDatHang" HeaderText="Ngày đặt" />
                <asp:BoundField DataField="TenNguoiNhan" HeaderText="Tên người nhận" />
                <asp:BoundField DataField="DienThoaiNhan" HeaderText="Số điện thoại" />
                <asp:BoundField DataField="DiaChiNhan" HeaderText="Địa chỉ giao" />
                <asp:BoundField DataField="TinhTrangDh" HeaderText="Tình trạng" />
                <asp:BoundField DataField="TriGia" HeaderText="Trị giá" />
               
                <asp:CommandField ShowDeleteButton="True" />
               
            </Columns>
           
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
           
        </asp:GridView>
        <asp:Label runat="server" Text="Label" ID="lblError" Visible="False"></asp:Label>
    </div></center>
</asp:Content>
