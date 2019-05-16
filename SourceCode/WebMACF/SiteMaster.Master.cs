using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



namespace WebMACF
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        XLDL x = new XLDL();
        int MAKH;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                
               
            }
        }
        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Session["Username"] = null;
                Session["Admin"] = null;
                Session["giohang"] = null;
                Response.Redirect("~/DangNhap.aspx");

            }
            else
                Response.Redirect("~/TrangChu.aspx");
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DangKy.aspx");
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DangNhap.aspx");
        }

        protected void btnTTDh_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ttdonhang.aspx");
        }
    }
}