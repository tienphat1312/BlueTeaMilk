<%@  Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="ThanhToan.aspx.cs" Inherits="WebMACF.ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>THANH TOÁN</title>
    <style type="text/css">
        .style6
        {
            width: 700px;
        }
        .style7
        {
            text-align: right;
            width: 400px;
        }
        .style9
        {
            width: 400px;
        }
        .style11
        {
            text-align: center;
        }

        .btnTT{
            border-radius:15px;
            background-color:darksalmon;
            font-size:medium;
        }
        .auto-style1 {
            height: 24px;
        }
        .auto-style2 {
            
            margin-left:330px;
        }

        .lbTT{
            float:right;
            margin-right:130px;
        }
        
        .lblTTL{
            margin-left:110px;
            float:left;
        }
        .textTTTT{
            width:350px;
            height:50px;
            text-align:center;
            background-color:greenyellow;
            border-radius:20PX;
            padding-top:16px;
        }
        .mainTT{
            width:70%;
            height:90%;
            background-color:lavender;
            border-radius:54px;
            text-align:center;
            padding-top:15px;
            margin-top:15px;
            margin-bottom:15px;
            padding-bottom:10px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: center;
            height: 12px;
        }
        .auto-style6 {
            text-align: left;
            height: 12px;
        }
        .auto-style7 {
            height: 248px;
        }
        .txtTK{
            margin-bottom:20px;
            margin-top:7px;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            background-color:deepskyblue;
            height:50px;
            width: 50%;
            padding-top: 17px;  
            font-size:larger;
        }
        .auto-style9 {
            height: 55px;
        }
        .auto-style10 {
            font-size: x-large;
            border-radius:5px;
            background-color:gold;
        }
        .auto-style11 {
            height: 51px;
        }
        .auto-style12 {
            font-size: x-large;
            color: #99FF66;
            background-color: #FF0000;
        }
        .auto-style13 {
            text-align: justify;       
        }
        .rdTT{margin-left:215px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center><div class="mainTT"><center> <table align="center" cellpadding="0" cellspacing="0" class="style6">
        <tr>
            <td colspan="2" style="text-align: center" height="40">
               <center> <div class="textTTTT">THÔNG TIN ĐƠN ĐẶT HÀNG</div></center></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="auto-style11">
                &nbsp;<center><div class="txtTK">TÀI KHOẢN</div></center></td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Label CssClass="lbTT" ID="lblten" runat="server" ForeColor="#3333CC"></asp:Label>
                <asp:Label CssClass="lblTTL" ID="Label1" runat="server" Text="HỌ VÀ TÊN:................................"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Label CssClass="lbTT" ID="lbldiachi" runat="server" ForeColor="#3333CC"></asp:Label>
                <asp:Label CssClass="lblTTL" ID="Label2" runat="server" Text="ĐỊA CHỈ:........................."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Label CssClass="lbTT" ID="lblemail" runat="server" ForeColor="#3333CC"></asp:Label>
                <asp:Label CssClass="lblTTL" ID="Label3" runat="server" Text="EMAIL:................."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Label CssClass="lbTT" ID="lbldienthoai" runat="server" ForeColor="#3333CC"></asp:Label>
                <asp:Label CssClass="lblTTL" ID="Label4" runat="server" Text="SỐ ĐIỆN THOẠI:..................."></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="auto-style1">
                </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="700px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="TenSp" HeaderText="Tên sản phẩm" />
                        <asp:BoundField DataField="Gia" HeaderText="Đơn giá" />
                        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng " />
                        <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2">
                <span class="auto-style10">TỔNG TIỀN: </span>
                <asp:Label ID="lbltongtien" runat="server" ForeColor="Red" CssClass="auto-style10"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" height="40" class="auto-style12">
                THÔNG TIN GIAO HÀNG</td>
        </tr>
        <tr>
            <td style="text-align: center" colspan="2" class="auto-style7">
                <center><asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar></center>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label CssClass="lblTTL" ID="Label5" runat="server" Text="NGƯỜI NHẬN:........................."></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox  ID="txtTen" runat="server" Width="177px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11" height="35">
                <asp:Label CssClass="lblTTL" ID="Label6" runat="server" Text="ĐỊA CHỈ:................................"></asp:Label>
            </td>
            <td height="35" class="auto-style4">
                <asp:TextBox  ID="txtDiachi" runat="server" Width="177px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11" height="35">
                <asp:Label CssClass="lblTTL" ID="Label7" runat="server" Text="ĐIỆN THOẠI:.........................."></asp:Label>
            </td>
            <td height="35" class="auto-style4">
                <asp:TextBox ID="txtDienthoai" runat="server" Width="177px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                <asp:RadioButton class="rdTT" ID="rbThanhtoantruoc" runat="server" Checked="True" 
                    GroupName="thanhtoan" Text="Thanh toán trước khi giao hàng" Visible="False" />
                <br />
                <asp:RadioButton class="rdTT" ID="rbThanhtoansau" runat="server" GroupName="thanhtoan" 
                    Text="Thanh toán sau khi giao hàng" Visible="False" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
           <center> <td colspan="2">
                <asp:Label ID="lbLoi" runat="server"></asp:Label>
            </td></center>
        </tr>
        <tr>
            
            <td colspan="2"><center>
               <asp:Button CssClass="btnTT" ID="btnDongy" runat="server" onclick="btnDongy_Click" 
                    Text="Đồng ý" Height="40px" Width="150px" />
                <asp:Button CssClass="btnTT" ID="btnHuy" runat="server" CausesValidation="False" 
                    onclick="btnHuy_Click" Text="Hủy" Height="40px" Width="150px" />
           </center> </td>
        </tr>
    </table> </center></div></center>
</asp:Content>