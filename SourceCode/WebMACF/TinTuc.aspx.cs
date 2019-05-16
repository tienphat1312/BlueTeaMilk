using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebMACF
{
    public partial class TinTucc : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            load_data();
        }

        private void load_data()
        {
            DataTable dt = x.getData("select Hinh,TieuDe, NoiDung from TinTuc");
            if (dt.Rows.Count > 0)
            {
                dtlTin.DataSource = dt;
                dtlTin.DataBind();
            }
        }
    }
}