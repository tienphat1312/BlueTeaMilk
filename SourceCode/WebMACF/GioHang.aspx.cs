using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebMACF
{
    public partial class GioHang : System.Web.UI.Page
    {
        public DataTable tb = new DataTable();
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            tb = (DataTable)Session["giohang"];
            if (!IsPostBack)
            {
                if (tb == null)
                    lbThongbao.Text = "MỜI KHÁCH HÀNG CHỌN MÓN !!!";
                else
                {
                    if (tb.Rows.Count > 0)
                    {
                        GridView1.DataSource = tb;
                        GridView1.DataBind();
                    }
                    lbThongbao.Text = "TỔNG TIỀN: " + tongtien(tb).ToString() + "VNĐ";
                }
            }
        }
        public int tongtien(DataTable tb)
        {
            int tt = 0;
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                tt = tt + int.Parse(tb.Rows[i]["ThanhTien"].ToString());
            }
            return tt;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                try
                {
                    DataTable tb = (DataTable)Session["giohang"];
                    tb.Rows.RemoveAt(chiso);
                    Session["giohang"] = tb;
                    Response.Redirect("~/GIOHANG.aspx");
                }
                catch
                {
                    Response.Redirect("~/GIOHANG.aspx");
                }
            }  
        }

        protected void btnMuatiep_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/THUCDON.aspx");
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            tb = (DataTable)Session["giohang"];
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                TextBox sl = (TextBox)GridView1.Rows[i].FindControl("txtSoluong");
                int soluong = int.Parse(sl.Text);
                //cập nhật số lượng cho giỏ hàng
                tb.Rows[i]["SoLuong"] = soluong;
                //lấy đơn giá của hàng từ giỏ hàng về. 
                int g = int.Parse(tb.Rows[i]["Gia"].ToString());
               
                //cập nhật tổng giá cho giỏ hàng.
                tb.Rows[i]["ThanhTien"] = g * soluong;
            }
            //load dữ liệu lại cho Gridview
            GridView1.DataSource = tb;
            GridView1.DataBind();
            //hiển thị tổng tiền.

            lbThongbao.Text = "TỔNG TIỀN " + tongtien(tb).ToString() + "VNĐ";
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            Session["giohang"] = null;
            Response.Redirect("~/ThucDon.aspx");
        }

        protected void HienXN()
        {
            lbXacnhan.Visible = true;
            btnDongY.Visible = true;
            btnHuy.Visible = true;
        }

        protected void btnThanhtoan_Click(object sender, EventArgs e)
        {
            DataTable dt = x.getData("select * from DonDatHang where TinhTrangDh in(N'Đang xử lý',N'Đã xác nhận', N'Đang giao')");
            if ((dt.Rows.Count >= 5) && (dt.Rows.Count <=8))
            {
                HienXN();
                lbXacnhan.Text = "Bộ phận giao hàng sẽ liên hệ với quý khách trong vòng 45 phút nữa.";
            }
            else 
                if (dt.Rows.Count > 8)
                    {
                        HienXN();
                        lbXacnhan.Text = "Bộ phận giao hàng sẽ liên hệ với quý khách trong vòng 1 tiếng nữa.";
                    }
                        else
                         if (dt.Rows.Count < 5)
                             { 
                                HienXN();
                            lbXacnhan.Text = "Bộ phận giao hàng sẽ liên hệ với quý khách trong vòng 30 phút nữa.";
                             }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void btnDongY_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ThanhToan.aspx");
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ThucDon.aspx");
        }
    }
}