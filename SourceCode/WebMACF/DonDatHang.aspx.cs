using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebMACF
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                loadData();
            }
            else Response.Redirect("~/DangNhap.aspx");
        }
        protected void loadData()
        {
             DataTable dt = x.getData("select * from DonDatHang");
                   if (dt.Rows.Count > 0)
                   {
                       gvDonhang.DataSource = dt;
                       gvDonhang.DataBind();
                   }
        }
       
    protected void gvDonhang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void gvDonhang_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            string ma = gvDonhang.DataKeys[e.RowIndex].Value.ToString();
            string str1 = "DELETE FROM ChiTietDatHang WHERE MaDh=" + ma;
            string str = "DELETE FROM DonDatHang WHERE MaDh=" + ma;
            x.Execute(str1);
            x.Execute(str);
            Response.Write("<script>alert('Bạn xóa thành công');</script>");
            str = "select * from DonDatHang";
            try
            {
                DataTable dt = x.getData(str);
                gvDonhang.DataSource = dt;
                gvDonhang.DataBind();
                dt.Dispose();
            }
            catch
            {
                lblError.Text = "Nếu bạn xóa thì Web lỗi. Vui lòng thêm sản phẩm :) !!";
            }
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
           
            int kq = x.Execute("update DonDatHang set TinhTrangDh = N'" + ddlTTDH.Text + "' where MaDh = '"+ddlIDSP.Text+"' ");
            loadData();
        }

        protected void gvDonhang_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}