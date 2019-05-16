<%@ Page Title="QUẢN LÝ SẢN PHẨM" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="WebMACF.QuanLySanPham1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headAdmin" runat="server">
     <link rel="stylesheet" style="text/css" href= "App_Themes/THEMEtrchu/css_Ad.css"/>
    <style type="text/css">
       body
       {
           background-size: cover;
       }
        .loginBox
{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 350px;
    height: 420px;
    padding: 80px 40px;
    box-sizing:border-box;
    background: rgba(0,0,0,.5);
    opacity: 0.8;
    margin-top: 130px;
}

.user
{
    height:100px;
    width:100px;
    border-radius: 30%;
    overflow: hidden;
    position:absolute; 
    top: calc(-170px/2);
    left: calc(50% - 50px);
}

h2
{
    margin:0;
    padding: 0 0 20px;
    color: #95b3f8;
    text-align: center;

}

.loginBox p
{
    margin: 0;
    padding: 0;
    font-weight: bold;
    color: #fff;
}

.loginBox input
{
    width: 100%;
    margin-bottom: 20px;
}

.loginBox input[type="text"],
.loginBox input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}

::placeholder
{
    color: rgba(255,255,255,.5);
}

.loginBox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
    background: #ff267e;
    cursor: pointer;
    border-radius: 20px;
}

.loginBox input[type="submit"]:hover
{
    background: #9A9A9A;
    color: #262626;
}

.loginBox a
{
    color: #fff;
    font-size: 14px;
    font-weight: bold;
    text-decoration: none;
}

#footerD
{
    margin-top:550px;
    text-align:center;
    color: #262626;
    background-color: #95b3f8;
    height: 50px;
    line-height: 50px;
}
        #mainAd
        {
            width: 100%;
            height: 500px;
            background-color: #ff267e;
        }
        .auto-style8 {
            width: 49%;
            height: 195px;
        }
        .auto-style9 {
            width: 257px;
            margin-left: 20%;
            height: 67px;
        }
        .auto-style10 {
            width: 220px;
            height: 67px;
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
        #AdminMaster1_txtID
        {
            margin-left: 20%;
            height: 30px;
            width: 60%;
        }

          #AdminMaster1_txtTensp
        {
            margin-left: 20%;
            height: 30px;
            width: 60%;
        }

            #AdminMaster1_txtGia
        {
            margin-left: 20%;
            height: 30px;
            width: 60%;
        }
             #AdminMaster1_txtKhuyenMai
        {
            margin-left: 20%;
            height: 30px;
            width: 60%;
        }

            .labelSanPham{margin-left: 20%;}
            #AdminMaster1_FileUpload2{margin-left: 5%;height: 30px;}
          #AdminMaster1_btnLuu{border-radius: 10px;}
          #AdminMaster1_btnNew{border-radius: 10px;}
          #AdminMaster1_btnSua{border-radius: 10px;}

          /*style_SANPHAM*/
          .hinhSp{
             text-align:center;
             margin-top:20px;
             margin-bottom:20px;
             height:600px;
             border-collapse:collapse;
         }

         .style1 td{padding:10px; border:1px solid #808080; color: #444; font-size:medium}
         .style1 th{padding: 4px 2px; color:bisque; 
                    /*background: -webkit-gradient(linear, left, bottom, left top, color-top(0,#ffd800),color-top(1,#ff0000));*/ 
                    border: 1px solid #00ff21; font-size: large; text-align: center;}
         .style1 th a{color:white;text-decoration:none;}
         .style1 th a:hover{color:#444;text-decoration:none;}

                    

         .mainSp{
             height:900px;
             width:70%;
             background-color:antiquewhite;
             padding-top:20px;
             margin-top:10px;
             border-radius: 20px;
         }
         .style1 {
             text-align: center;
             margin-top: 20px;
             margin-bottom: 20px;
         }

         .textSp{border-radius:10px;
                 background-color:deepskyblue;
                 height:50px;
                 width:250px;
                 padding-top:14px;
                 font-size:large;
         }
         .style2 {
             margin-top:20px;
             width: 50%;
         }

         .btnCn{
             border-radius: 10px;
         }

    .auto-style18 {
        height: 399px;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMaster1" runat="server">
    <div id="topStore">
	    QUẢN LÝ SẢN PHẨM
	</div>
	<div id="mainStore" class="auto-style18">
		
	    
		
        <br /> 
        <center>
        <table class="auto-style8" border="1">
            <tr>
                <td class="auto-style14">
                    <asp:Label class="labelSanPham" ID="lbTenSp" runat="server" Text="Tên sản phẩm:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtTensp" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label class="labelSanPham" ID="lbGia" runat="server" Text="Giá:"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label class="labelSanPham" ID="Label2" runat="server" Text="Khuyến mãi:"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtKhuyenMai" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label class="labelSanPham" ID="lbHinh" runat="server" Text="Hình sản phẩm"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="303px" />
                </td>
            </tr>
        </table>
        <table class="auto-style17">
            <tr>
                <td>
                    <asp:Button ID="btnLuu" runat="server" Font-Bold="True" Height="50px" OnClick="btnLuu_Click" Text="LƯU" Width="159px" ForeColor="#6666FF" />
                    <br />
                </td>
                <td>
                    <asp:Button ID="btnNew" runat="server" Font-Bold="True" Height="50px" Text="TẠO MỚI" Width="159px" OnClick="btnNew_Click" />
                    <br />
                </td>
                <td>
                    <asp:Button ID="btnSua" runat="server" Height="54px" Text="CHỈNH SỬA" Width="142px" OnClick="btnSua_Click" />
                </td>
            </tr>
        </table>
		  
		</center>
	    
		
	</div>

    <center> <div class ="mainSp">
        <div class="textSp">QUẢN LÝ MÓN</div>
        <table class="style2">
            <tr>
                <td>TÊN: </td>
                <td>
                    <asp:TextBox ID="txtTenMon" runat="server"></asp:TextBox>
                </td>
                <td rowspan="3">
                    <asp:Label ID="Label1" runat="server" Text="ID Món:  "></asp:Label>
                    <asp:DropDownList ID="ddlIDmon" runat="server" DataSourceID="SqlDataSource2" DataTextField="ID" DataValueField="ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Blue_TeaConnectionString %>" SelectCommand="SELECT [ID] FROM [ThucDon]"></asp:SqlDataSource>
                </td>
                <td rowspan="3">
                    <asp:Button CssClass="btnCn" ID="btnCapnhat" runat="server" Height="48px" Text="CẬP NHẬT" Width="122px" OnClick="btnCapnhat_Click" />
                </td>
            </tr>
            <tr>
                <td>GIÁ:</td>
                <td>
                    <asp:TextBox ID="txtGiamon" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KM:</td>
                <td>
                    <asp:TextBox ID="txtKM" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        </br>
        <asp:GridView CssClass="style1" ID="GridView1" 
            runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
            OnRowDeleting="GridView1_RowDeleting" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="219px" Width="621px" 
            OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" PageSize="4">
        <AlternatingRowStyle BackColor="#CCCCCC" />
       <Columns>
           <%--<asp:TemplateField HeaderText="STT">
      <ItemTemplate><%#get_stt() %></ItemTemplate>
</asp:TemplateField>--%>
          
           <asp:BoundField  DataField="ID" HeaderText="ID" />
          
           <asp:BoundField DataField="TenSp" HeaderText="Tên " />
           <asp:BoundField DataField="Gia" HeaderText="Giá" />
           <asp:BoundField DataField="KhuyenMai" HeaderText="Khuyến mãi" />
           <asp:TemplateField HeaderText="Hình">
               <ItemTemplate>
                   <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl='<%# "~/IMG_1/" + Eval("Hinh") %>' Width="114px" />
               </ItemTemplate>
           </asp:TemplateField>
           <asp:CommandField ShowDeleteButton="True" />
            
       </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
       
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Blue_TeaConnectionString %>" SelectCommand="SELECT [ID] FROM [ThucDon]"></asp:SqlDataSource>
       <asp:Label ID="lbError" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
 </div></center>

</asp:Content>
