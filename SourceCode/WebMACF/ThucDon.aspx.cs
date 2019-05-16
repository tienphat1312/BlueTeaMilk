using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebMACF
{
    public partial class ThucDon : System.Web.UI.Page
    {
        
        XLDL x = new XLDL();
        KetNoiGioHang gh = new KetNoiGioHang();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DataTable banggh;
            banggh = (DataTable)Session["giohang"];
            Label sd = (Label)e.Item.FindControl("lbID");
            DataTable bang = x.getData("select TenSp, Gia FROM ThucDon WHERE ID =" + sd.Text);
            DataTable tb = new DataTable();
            string name = e.CommandName;
            if (name == "addtocart")
            {
                string ma = sd.Text;


                string t = bang.Rows[0]["TenSp"].ToString();


                double giasp = Convert.ToDouble(bang.Rows[0]["Gia"].ToString());

               
                tb = gh.ThemGioHang(t, giasp, 1, ma, banggh);
            }

            Session["giohang"] = tb;

            Response.Write("<script>alert('Bạn đã chọn một sản phẩm');</script>");
            Response.Redirect("~/ThucDon.aspx");
    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}