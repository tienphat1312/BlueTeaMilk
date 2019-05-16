using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace WebMACF
{
    public partial class TTDonHang : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                load_data();
            }
            else
            {
                Response.Write("<script>alert('MỜI KHÁCH HÀNG VUI LÒNG ĐĂNG NHẬP !!');</script>");
                Response.Redirect("~/DANGNHAP.aspx");
                //lbID.Visible = true;
                //lbID.Text = "MỜI KHÁCH HÀNG VUI LÒNG ĐĂNG NHẬP !!";
            }
           

        }
        protected void Get_ID()
        {

        }
        protected void load_data()
        {
            
            string str = "select kh.MaKh, kh.HoTenKh, NgayDatHang,DienThoaiNhan, DiaChiNhan, TinhTrangDh, TriGia from KhachHang kh, DonDatHang ddh where kh.MaKh = ddh.MaKh and TinhTrangDh in (N'Đang xử lý', N'Đã xác nhận', N'Đang giao') and kh.TenTk='" + Session["Username"].ToString() + "'";
            x.Execute(str);
            try
            {
                DataTable dt = x.getData(str);
                gvTTDh.DataSource = dt;
                gvTTDh.DataBind();
                dt.Dispose();
            }
            catch
            {
                lbID.Text = "KHÔNG KẾT NỐI";
            }
        }

        protected void btnHuyDh_Click(object sender, EventArgs e)
        {
            int kq = x.Execute("update DonDatHang set TinhTrangDh = N'KHÁCH HỦY' where TenTk='" + Session["Username"].ToString() + "'");
            load_data();
        }
    }
}