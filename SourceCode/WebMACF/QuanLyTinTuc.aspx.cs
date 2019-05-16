using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebMACF
{
    public partial class ThemTinTuc : System.Web.UI.Page
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
            string str = "select * from TinTuc";
            try
            {
                DataTable dt = x.getData(str);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                dt.Dispose();
            }
            catch
            {
                lbError.Text = "khong ket noi";
            }
        }
        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string hinh = FileUpload2.FileName;
            FileUpload2.SaveAs(MapPath("~/IMG_1/" + hinh));
            string str = " INSERT INTO TinTuc(TieuDe,NoiDung,Hinh)  VALUES (N'" + txtTieude.Text + "', N'" + txtNoidung.Text + "', '" + hinh + "')";
            x.Execute(str);
            load_data();
            //Response.Write("<script>alert('Bạn thêm mới thành công');</script>");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string ma = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string str = "DELETE FROM TinTuc WHERE ID_TinTuc=" + ma;
            x.Execute(str);
            Response.Write("<script>alert('Bạn xóa thành công');</script>");
            str = "select * from TinTuc";
            try
            {
                DataTable dt = x.getData(str);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                dt.Dispose();
            }
            catch
            {
                lbError.Text = "Nếu bạn xóa thì Web lỗi. Vui lòng thêm sản phẩm :) !!";
            }
        }
    }
}