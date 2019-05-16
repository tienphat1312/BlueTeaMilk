<%@ Page Title="QUẢN LÝ PHẢN HỒI" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyPhanHoi.aspx.cs" Inherits="WebMACF.QuanLyPhanHoi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headAdmin" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>

        .gvPh{
            height:400px;
            width: 60%;
            background-color: antiquewhite;
            margin-top:20px;
            padding-top:20px;
            margin-bottom:20px;
            border-radius:15px;
            border: 3px solid blue;        }
        .gvHTPH td{padding:10px; border:1px solid #808080; color: #444; font-size:small}
        .gvHTPH th{
                padding: 4px 2px; 
                    color:bisque;      
                    border: 1px solid #00ff21; font-size: large; text-align: center;}
         .gvHTPH th a{color:white;text-decoration:none;}
         .gvHTPH th a:hover{color:#444;text-decoration:none;}
        .txtPH{
            height:25px;
            font-size: 16px;
            border-radius:4px;
        }
       .w3-button{
           border-radius:15px;
       }
       .top-PH
       {
           height: 50px;
           width: 40%;
           background-color: limegreen;
           margin-top: ;
           padding-top: 15px;
           border-radius: 40px;
           margin-bottom:10px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMaster1" runat="server">
     <center><div class="gvPh">
        <center>
            <div class="top-PH">QUẢN LÝ CÁC PHẢN HỒI CỦA KHÁCH HÀNG</div>
            <table class="auto-style3">
            <tr>
                <td class="auto-style4">Kiểm duyệt bình luận.....................</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlPH" runat="server" CssClass="txtPH">
                        <asp:ListItem>Đã duyệt</asp:ListItem>
                        <asp:ListItem>Không duyệt</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Blue_TeaConnectionString %>" SelectCommand="SELECT [MaBinhLuan] FROM [LienHe]"></asp:SqlDataSource>
&nbsp;</td>
                <td class="auto-style6" rowspan="2">
                    <asp:Button class="w3-button w3-blue" ID="btnCapnhat" runat="server" Height="49px" Text="SAVE" Width="143px" OnClick="btnCapnhat_Click"   />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mã bình luận.................................</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlIDBL" runat="server" DataSourceID="SqlDataSource1" DataTextField="MaBinhLuan" DataValueField="MaBinhLuan" CssClass="txtPH">
                    </asp:DropDownList>
                    </td>
            </tr>
        </table>
            <br />
        <asp:gridview CssClass="gvHTPH" runat="server" ID="gvPh" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5">
            <Columns>
                <asp:BoundField DataField="MaBinhLuan" HeaderText="Mã bình luận" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ tên KH" />
                <asp:BoundField DataField="SoDienThoai" HeaderText="Số điện thoại" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="NoiDung" HeaderText="Nội dung " />
                <asp:BoundField DataField="KiemDuyet" HeaderText="Kiểm duyệt" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" BorderStyle="Solid" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:gridview>
            <asp:Label ID="lbError" runat="server" Text="Label" Visible="False"></asp:Label>
            </center>
    </div></center>
</asp:Content>
