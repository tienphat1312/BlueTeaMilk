using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebMACF
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        int MAKH;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
                Response.Redirect("~/DangNhap.aspx");
            if (Session["giohang"] == null)
                Response.Redirect("~/GioHang.aspx");
            if (Session["Username"] != null)
            {
                string s = "SELECT  MaKh, HoTenKh, DiaChi, SoDienThoai, Email FROM KhachHang where TenTk='" + Session["Username"].ToString() + "'";
                DataTable dt = x.getData(s);
                if (dt.Rows.Count != 0)
                {
                    MAKH = int.Parse(dt.Rows[0][0].ToString());
                    lblten.Text = dt.Rows[0][1].ToString();
                    lbldiachi.Text = dt.Rows[0][2].ToString();
                    lbldienthoai.Text = dt.Rows[0][3].ToString();
                    lblemail.Text = dt.Rows[0][4].ToString();
                }
            }

            if (Session["giohang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["giohang"];
                System.Int32 tongThanhTien = 0;
                foreach (DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToInt32(r["Gia"]);
                    tongThanhTien += Convert.ToInt32(r["ThanhTien"]);
                    lbltongtien.Text = tongThanhTien.ToString();
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            if (!IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Today;
            }
        }

        protected void btnDongy_Click(object sender, EventArgs e)
        {
            int httt = 0;
            String Ngaygiao, Ngaydathang, Tennguoinhan, Diachinhan, Dienthoainhan;     
            Ngaydathang = DateTime.Today.ToString("MM/dd/yyyy");
            Ngaygiao = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
            Tennguoinhan = txtTen.Text;
            Diachinhan = txtDiachi.Text;
            Dienthoainhan = txtDienthoai.Text;
            Int32 tongThanhTien = Int32.Parse(lbltongtien.Text);
            if (rbThanhtoantruoc.Checked)
                httt = 1;

            try
            {
                string s = "INSERT INTO DonDatHang(MaKh,NgayDatHang,NgayGiaoHang,TenNguoiNhan,DienThoaiNhan,DiaChiNhan,TinhTrangDh,TriGia) VALUES(" + MAKH + ",'" + Ngaydathang + "','" + Ngaygiao + "',N'" + Tennguoinhan + "','" + Dienthoainhan + "',N'" + Diachinhan + "',N'Đang xử lý'," + tongThanhTien + ")";
                x.Execute(s);
                string k = "Select Max(MaDh) from DonDatHang  Where MaKh=" + MAKH;
                int MADH = int.Parse(x.getValue(k).ToString());
                DataTable dt = new DataTable();
                dt = (DataTable)Session["giohang"];
                int Masp, Soluong, Dongia, Thanhtien;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Masp = int.Parse(dt.Rows[i]["ID"].ToString());
                    Soluong = int.Parse(dt.Rows[i]["SoLuong"].ToString());
                    Dongia = int.Parse(dt.Rows[i]["Gia"].ToString());
                    Thanhtien = int.Parse(dt.Rows[i]["ThanhTien"].ToString());
                    string nhap = "INSERT INTO ChiTietDatHang(ID,MaDh,SoLuong,Gia,ThanhTien) VALUES(" + Masp + "," + MADH + "," + Soluong + "," + Dongia + "," + Thanhtien + ")";
                    x.Execute(nhap);
                    Response.Write("<script>alert('BẠN ĐÃ THANH TOÁN THÀNH CÔNG. CÁM ƠN QUÝ KHÁCH');</script>");
                }
            Response.Write("<script>alert('BẠN ĐÃ THANH TOÁN THÀNH CÔNG. CÁM ƠN QUÝ KHÁCH');</script>");
            Response.Redirect("~/ThucDon.aspx");
            }
            catch
            {
                Response.Write("<script>alert('BẠN ĐÃ THANH TOÁN THÀNH CÔNG. CÁM ƠN QUÝ KHÁCH');</script>");
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GioHang.aspx");
        }
    }
}