<%@ Page Title="ĐƠN HÀNG" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="TTDonHang.aspx.cs" Inherits="WebMACF.TTDonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .styleTT{
            margin-top:30px;

        }
        .styleTT td{padding:10px; border:1px solid #ff0000; color: #000000; font-size:medium}
         .styleTT th{padding: 4px 2px; color:aliceblue; 
                    border: 1px solid #ff0000; font-size: large; text-align: center;}
         .styleTT th a{color:white;text-decoration:none;}
         .styleTT th a:hover{color:#ff0000;text-decoration:none;}
           .topTTDh{
               height:80px;
               width: 40%;
               font-size:40px;
               padding-top:15px;
               background-color:aqua;
               margin-top:30px;
               border-radius:16px;
           }
           .lbNoti
           {
               font-size:50px;
               color:red;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="TTDhg">
        <center>
            <div class="topTTDh">ĐƠN HÀNG CỦA BẠN</div>
        <asp:GridView CssClass="styleTT" ID="gvTTDh"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaKh">
            <Columns>
                <asp:BoundField DataField="HoTenKh" HeaderText="Họ và tên" />
                <asp:BoundField DataField="NgayDatHang" HeaderText="Ngày đặt hàng" />
                <asp:BoundField DataField="DienThoaiNhan" HeaderText="Số điện thoại" />
                <asp:BoundField DataField="DiaChiNhan" HeaderText="Địa chỉ giao" />
                <asp:BoundField DataField="TriGia" HeaderText="Tổng tiền" />
                <asp:BoundField DataField="TinhTrangDh" HeaderText="Tình trạng đơn hàng" />
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
            <br />
            <asp:Label CssClass="lbNoti" ID="lbID" runat="server" Visible="false" Text="Label"></asp:Label>
        </center>

    </div>
</asp:Content>
