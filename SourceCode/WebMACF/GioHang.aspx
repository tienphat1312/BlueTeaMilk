<%@ Page Title="GIỎ HÀNG" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="WebMACF.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" style="text/css" href= "App_Themes/THEMEtrchu/new.css">
    <style type="text/css">
        .auto-style7 {
            width: 23%;
            height: 40px;
            border: 3px solid red;
            border-radius: 10px;
            margin-top: -10px;
        }
        #ContentPlaceHolder1_lbThongbao
        {
            margin-left: 20px;
            
        }
        .buttonGh{border-radius:15px;
                  margin-top: -30px;
        }
        .btnGh{
         margin-bottom: 10px;   
        }

        .top-gh{
          padding-top:20px;
          padding-bottom:20px;
          margin-top: 20px;
           width:180px;
           height:60px;
           background-color:coral;
           border-radius: 10px;

        }
        
        .auto-style8 {
            height: 70px;
            width: 40%;
            margin-left: 200px;
            margin-top: 20px;
        }

        .btnConfirm{
            height: 40px;
            width:120px;
            border-radius: 10px;
            background-color: #58ddd5;
            color: crimson;
            font-size: 17px;
        }
        .lbXn
        {
            font-size: 20px;
            color: red;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="btnGh">
    <center>

        <div class="top-gh">GIỎ HÀNG CỦA BẠN</div>

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="298px" Width="684px" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="MÃ ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="TenSp" HeaderText="TÊN ">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Gia" HeaderText="GIÁ">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="SỐ LƯỢNG">
                    <ItemTemplate>
                         <asp:TextBox ID="txtSoluong" runat="server" Text='<%# Eval("SOLUONG") %>' 
                                    Width="59px"></asp:TextBox>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="ThanhTien" HeaderText="THÀNH TIỀN">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField ButtonType="Button" CommandName="Xoa" Text="Xóa" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <br />
    </center>
        <center><table class="auto-style7">
            <tr>
                
                <td><asp:Label ID="lbThongbao" runat="server" Text="Label" Font-Size="Larger"></asp:Label>
                </td>
            </tr>
        </table></center>
            <br />
        <br />
         
        <center>
       
            
                    <asp:Button CssClass="buttonGh" ID="btnMuatiep" runat="server" OnClick="btnMuatiep_Click" Text="Mua tiếp" Font-Size="Medium"  Height="50px" Width="105px" BackColor="#33CCFF" BorderColor="Red" />
              
                    <asp:Button CssClass="buttonGh" ID="btnCapnhat" runat="server" OnClick="btnCapnhat_Click" Text="Cập nhật" Font-Size="Medium"  Height="50px" Width="120px" BackColor="#33CCFF" BorderColor="Red" />
                
                    <asp:Button CssClass="buttonGh" ID="btnXoa" runat="server" OnClick="btnXoa_Click" Text="Xóa" Font-Size="Medium" Height="50px" Width="120px" BackColor="#33CCFF" BorderColor="Red" />
                
                    <asp:Button CssClass="buttonGh" ID="btnThanhtoan" runat="server" Text="Thanh toán" Font-Size="Medium"  Height="50px" OnClick="btnThanhtoan_Click" BackColor="#33CCFF" BorderColor="Red" Width="120px" />
           
            </center>
         <center><div> 
             <table class="auto-style8">
                 <tr>
                     <td colspan="2">
                         <asp:Label CssClass="lbXn" ID="lbXacnhan" runat="server" Text="Label" Font-Bold="True" Font-Overline="False" Visible="False" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         &nbsp;
                         <asp:Button CssClass="btnConfirm" ID="btnDongY" runat="server" Text="ĐỒNG Ý" Visible="False" OnClick="btnDongY_Click" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button CssClass="btnConfirm" ID="btnHuy" runat="server" Text="HỦY" Visible="False" OnClick="btnHuy_Click" />
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>
         </div></center>
         

     </div>
</asp:Content>
