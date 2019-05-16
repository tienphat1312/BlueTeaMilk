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
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void btnDangnhap_Click(object sender, EventArgs e)
        {

        }
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDangnhap_Click(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                Session["Username"] = null;
                Session["Admin"] = null;
                Session["giohang"] = null;
            }
            else
            {
                string sqltr = "SELECT * FROM KhachHang WHERE TenTk='" + txtTen.Text + "'AND MatKhau='" + txtMatkhau.Text + "'";
                string admin = "SELECT * FROM KhachHang WHERE TenTk='" + txtTen.Text + "'AND MatKhau='" + txtMatkhau.Text + "'AND MaQuyen =" + 1 + "";
                try
                {

                    DataTable dt = x.getData(sqltr);
                    if (dt.Rows.Count != 0)
                    {
                        DataTable bang = x.getData(admin);
                        if (bang.Rows.Count != 0)
                        {
                            Session["Admin"] = txtTen.Text;
                            Response.Redirect("~/QuanLySanPham.aspx");
                        }
                        else
                        {
                            Session["Username"] = txtTen.Text;
                            
                            Response.Redirect("~/ThucDon.aspx");
                           
                            Session["Admin"] = null;
                        }
                    }
                    else
                        lbThongbao.Visible = true;
                    lbThongbao.Text = "Tài khoản không tồn tại";
                }
                catch
                {
                    lbThongbao.Text = "không kết nối";
                }
            }
            
        }

        protected void txtTen_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("DangKy.aspx");
        }
    }
}