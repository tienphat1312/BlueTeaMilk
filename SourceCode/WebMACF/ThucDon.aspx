<%@ Page Title="THỰC ĐƠN" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="ThucDon.aspx.cs" Inherits="WebMACF.ThucDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
          td,input {
            font-family:Cambria;
            font-size:20px;
            text-align:center;
            padding-left:35px;
            padding-top: 10px;
            padding-bottom: 5px;
            margin:5px;
            vertical-align:top;
        }

          #mainMleft{
            width: 24.8%;
	height: 150px;
	float: left;
	background-color: aqua;
	position: fixed;
	margin-left: 2.5%;
	margin-top: 110px;
     border-radius: 15px;
          }
          .auto-style1 {
        font-size: 14px;
    }
          </style>
    <link rel="stylesheet" style="text/css" href= "App_Themes/THEMEtrchu/new.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainM">
		<div id="mainMleft">
			<ul>
				<li><a href = "#trasuaSection"><img src="IMG_1/if_cup_115742 (1).png" width="30px" height="30px"> TRÀ SỮA</a></li>	
				    <%--<li><a href = "#hongtraSection"><img src="IMG/if_cup_115742 (1).png" width="30px" height="30px"> HỒNG TRÀ</a></li>--%>                <%--<li><a href = "#luctraSection"><img src="IMG/if_cup_115742 (1).png" width="30px" height="30px"> LỤC TRÀ</a></li>
				<li><a href = "#xienqueSection"><img src="IMG/78693-200.png" width="30px" height="30px"> XIÊN QUE</a></li>--%>
				<%--<li><a href = "#doanSection"><img src="IMG_1/if_food-pizza-fastfood-outline-stroke_763206.png" width="30px" height="30px"> ĐỒ ĂN</a></li>--%>	
				<li id="up"><a href="#logo"><img src="IMG_1/24.png" width="50px" height="30px"></a>&nbsp;&nbsp;&nbsp; </li>
						
		</ul>
		</div> 
		
		<div id="mainMright">
			<div id="trasuaSection" class="sectS">TRÀ SỮA</div>
			<div id="stra sua" class="sect sectTS">
				
			    <asp:DataList ID="DataList1"  runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" DataKeyField="ID" >
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="202px" ImageUrl='<%# "~/IMG_1/"+Eval("Hinh") %>' Width="191px" />
                        <br />
                        <asp:Label ID="TenSpLabel" runat="server" Text='<%# Eval("TenSp") %>' />
                        <asp:Label ID="lbID" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
                        <br />
                        Giá:
                        <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
                        &nbsp;<br /><span class="auto-style1">Khuyến mãi:</span>
                        <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" Text='<%# Eval("KhuyenMai") %>'></asp:Label>
                        <br />
                        <asp:LinkButton ID="btnMua" runat="server" CommandName="addtocart">MUA</asp:LinkButton>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Blue_TeaConnectionString %>" SelectCommand="SELECT * FROM [ThucDon]"></asp:SqlDataSource>
				
			</div>
            <%--<div id="hongtraSection" class="sectS">HỒNG TRÀ</div>
			<div id="shong tra"  class="sect sectHT">
				
			</div>--%>
		
			<%--<div id="doanSection"  class="sectS">ĐỒ ĂN</div>
			<div id="sdo an"  class="sect sectDA">
				
			</div>--%>
			<script src="App_Themes/THEMEtrchu/jquery-3.2.1.min.js"></script>
			<script src="App_Themes/THEMEtrchu/app.js"></script>
		</div>
	</div>
	

</asp:Content>
