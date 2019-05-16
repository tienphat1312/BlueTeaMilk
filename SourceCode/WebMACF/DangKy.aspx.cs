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
    public partial class DangKy : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
                Response.Redirect("THUC DON.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 31; i++)
                DropDownList1.Items.Add(i.ToString());
        }

        protected void DropDownList2_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 12; i++)
                DropDownList2.Items.Add(i.ToString());
        }

        protected void DropDownList3_Load(object sender, EventArgs e)
        {
            for (int i = 1960; i <= 2017; i++)
                DropDownList3.Items.Add(i.ToString());
        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {

            string t;
            if (rdbNam.Checked)
                t = rdbNam.Text;
            else
                t = rdbNu.Text;
            String Ngaysinh = DropDownList2.Text + "/" + DropDownList1.Text + "/" + DropDownList3.Text;
            string sqltr = "insert KhachHang(HoTenKh,DiaChi,SoDienThoai,Email,TenTk,MatKhau,NgaySinh,GioiTinh) VALUES('" + txtTen.Text + "','" + txtDiachi.Text + "','" + txtSdt.Text + "','" + txtEmail.Text + "','" + txtTentk.Text + "','" + txtMatkhau.Text + "','" + Ngaysinh + "','" + t + "')";
            string chuoi = "Data Source=.;Initial Catalog=Blue_Tea;Integrated Security=True";
            SqlConnection ketnoi = new SqlConnection(chuoi);
            ketnoi.Open();
            x.Execute(sqltr);
            Response.Redirect("~/DangNhap.aspx");
        }

        protected void lbLammoi_Click(object sender, EventArgs e)
        {
            txtTen.Text = "";
            txtDiachi.Text = "";
            txtSdt.Text = "";
            txtEmail.Text = "";
            txtTentk.Text = "";
            txtMatkhau.Text = "";
            txtNhacmk.Text = "";
        }
    }
}