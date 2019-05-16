<%@ Page Title="QUẢN LÝ TIN TỨC" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyTinTuc.aspx.cs" Inherits="WebMACF.ThemTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headAdmin" runat="server">
    <link rel="stylesheet" style="text/css" href= "App_Themes/THEMEtrchu/css_Ad.css"/>
    <style type="text/css">
        #mainTT
        {
            width: 100%;
            height: 500px;
            background-color: #ff267e;
        }
        .auto-style8 {
            width: 38%;
            height: 195px;
        }
        .auto-style9 {
            width: 257px;
            margin-left: 20%;
            height: 53px;
        }
        .auto-style10 {
            width: 220px;
            height: 53px;
        }
        .auto-style11 {
            width: 257px;
            height: 39px;
            margin-left: 20%;
        }
        .auto-style12 {
            width: 220px;
            height: 39px;
        }
        .auto-style14 {
            width: 257px;
            height: 40px;
            
        }
        .auto-style15 {
            width: 220px;
            height: 40px;
        }
        .auto-style17 {
            width: 39%;
            margin-top: 20px;
        }
        #ContentPlaceHolder1_txtID
        {
            margin-left: 20%;
            height: 30px;
            width: 60%;
        }

          #ContentPlaceHolder1_txtTensp
        {
            margin-left: 20%;
            height: 30px;
            width: 60%;
        }

            #ContentPlaceHolder1_txtGia
        {
            margin-left: 20%;
            height: 30px;
            width: 60%;
        }
            .labelSanPham{margin-left: 20%;}
            #AdminMaster1_FileUpload2{margin-left: 15px;height: 30px;}
          #AdminMaster1_btnLuu{border-radius: 10px; margin-left: 30px;}
          #AdminMaster1_btnNew{border-radius: 10px;}
          #AdminMaster1_btnSua{border-radius: 10px;}
          .auto-style8{
              margin-top:30px;
          }
          .txtNhap
          {
              height: 25px;
              width: 160px;

          }
          .txtNhapnd
          {
              height: 85px;
              width: 260px;
              margin-left:20PX;
          }
          .labelSanPham
          {
              font-size: 20px;
          }

           .style_TT td{padding:10px; border:1px solid #ff0000; color: #000000; font-size:medium}
         .style_TT th{padding: 4px 2px; color:aliceblue; 
                    border: 1px solid #ff0000; font-size: large; text-align: center;}
         .style_TT th a{color:white;text-decoration:none;}
         .style_TT th a:hover{color:#ff0000;text-decoration:none;}
         .ddlTT{
             height: 35px;
             width: 80px;
             margin-bottom: 20px;
         }

         .textTT{
             height: 80px;
             width: 370px;
             background-color: aqua;
             font-size: xx-large;
             padding-top: 20px;
             margin-top: 20px;
             border-radius: 10px;

         }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMaster1" runat="server">
    <center><div class="mainTT">

       <div class="textTT">QUẢN LÝ TIN TỨC</div>

    <table class="auto-style8" border="1">
            <tr>
                <td class="auto-style14">
                    <asp:Label class="labelSanPham" ID="lbTieuDe" runat="server" Text="Tiêu đề.................."></asp:Label>
                </td>
                <td class="auto-style15">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox CssClass="txtNhap" ID="txtTieude" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label class="labelSanPham" ID="lbNd" runat="server" Text="Nội dung................"></asp:Label>
                </td>
                <td class="auto-style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox CssClass="txtNhapnd" TextMode="MultiLine" Rows="4" ID="txtNoidung" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label class="labelSanPham" ID="lbHinh" runat="server" Text="Hình sản phẩm"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="253px" Height="35px" />
                </td>
            </tr>
        </table>
       <table class="auto-style17">
            <tr>
                <td>
                    <asp:Button ID="btnLuu" runat="server" Font-Bold="True" Height="50px"  Text="LƯU" Width="159px" ForeColor="#6666FF" OnClick="btnLuu_Click" />
                    <br />
                </td>
                <td>
                    <asp:Button ID="btnNew" runat="server" Font-Bold="True" Height="50px" Text="TẠO MỚI" Width="159px"  />
                    <br />
                </td>
                <td>
                    <asp:Button ID="btnSua" runat="server" Height="54px" Text="CẬP NHẬT CHỈNH SỬA" Width="154px" Font-Bold="True" Font-Size="8pt" ForeColor="#FF3300"  />
                </td>
            </tr>
        </table>
       </br>
       
       <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="LẤY ID CHỈNH SỬA"></asp:Label>
       
       <asp:DropDownList CssClass="ddlTT" ID ="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ID_TinTuc" DataValueField="ID_TinTuc">
       </asp:DropDownList>
</br>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Blue_TeaConnectionString %>" SelectCommand="SELECT [ID_TinTuc] FROM [TinTuc]"></asp:SqlDataSource>
       <asp:GridView CssClass="style_TT" ID="GridView1" runat="server" AutoGenerateColumns="False" Width="728px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_TinTuc" GridLines="Horizontal" OnRowDeleting="GridView1_RowDeleting">
           <AlternatingRowStyle BackColor="#F7F7F7" />
           <Columns>
               <asp:BoundField DataField="ID_TinTuc" HeaderText="ID" />
               <asp:BoundField DataField="TieuDe" HeaderText="Tiêu đề" />
               <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" />
               <asp:TemplateField HeaderText="Hình">
                   <ItemTemplate>
                       <asp:Image ID="Image1" runat="server" Height="102px" ImageUrl='<%# "~/IMG_1/" + Eval("Hinh") %>' Width="120px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:CommandField ShowDeleteButton="True" />
           </Columns>
           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
           <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
           <SortedAscendingCellStyle BackColor="#F4F4FD" />
           <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
           <SortedDescendingCellStyle BackColor="#D8D8F0" />
           <SortedDescendingHeaderStyle BackColor="#3E3277" />
       </asp:GridView>
       <asp:Label ID="lbError" runat="server" Text="Label" Visible="False"></asp:Label>
       </br>
   </div></center> 
</asp:Content>
