using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebMACF
{
    public partial class QuanLySanPham1 : System.Web.UI.Page
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

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string hinh = FileUpload2.FileName;
            FileUpload2.SaveAs(MapPath("~/IMG_1/" + hinh));
            string str = " INSERT INTO ThucDon(TenSp,Gia,KhuyenMai,Hinh)  VALUES ( N'" + txtTensp.Text + "', '" + txtGia.Text + "','"+txtKhuyenMai.Text+"', '" + hinh + "')";
            x.Execute(str);
            Response.Write("<script>alert('Bạn thêm mới thành công');</script>");
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
           
            txtGia.Text = "";
            txtTensp.Text = "";
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {

        }

        protected void load_data()
        {
            string str = "select * from ThucDon";
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string ma = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string str = "DELETE FROM ThucDon WHERE ID=" + ma;
            x.Execute(str);
            Response.Write("<script>alert('Bạn xóa thành công');</script>");
            str = "select * from ThucDon";
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            load_data();
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            int kq = x.Execute("update ThucDon set TenSp = N'" + txtTenMon.Text + "', Gia = '" + txtGiamon.Text + "',KhuyenMai = N'"+txtKM.Text+"' where ID = '" + ddlIDmon.Text + "' ");
            Response.Write("<script>alert('CẬP NHẬT THÀNH CÔNG');</script>");
            load_data();
        }
    }
}