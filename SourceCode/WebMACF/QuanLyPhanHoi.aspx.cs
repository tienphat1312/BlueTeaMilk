using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebMACF
{
    public partial class QuanLyPhanHoi : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                load_data();
            }
            else Response.Redirect("~/DangNhap.aspx");
           
        }

        protected void load_data()
        {
            string str = "select * from LienHe";
            try
            {
                DataTable dt = x.getData(str);
                gvPh.DataSource = dt;
                gvPh.DataBind();
                dt.Dispose();
            }
            catch
            {
                
                lbError.Text = "khong ket noi";
            }
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            x.Execute("update LienHe set KiemDuyet = N'" + ddlPH.Text + "' where MaBinhLuan = '" + ddlIDBL.Text + "'");
            load_data();
        }
    }
}