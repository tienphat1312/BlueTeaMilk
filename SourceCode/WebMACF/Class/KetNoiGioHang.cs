using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebMACF
{
    public class KetNoiGioHang
    {
         public KetNoiGioHang()
        {

        }

        public DataTable ThemGioHang( string tensp, double gia,  int sl, string ID, DataTable bang)
        {
            DataTable tbgiohang = new DataTable();
            if (bang == null)
            {
                tbgiohang = new DataTable();
                
                tbgiohang.Columns.Add("ID");
                tbgiohang.Columns.Add("TenSp");
                tbgiohang.Columns.Add("Gia");
                
                tbgiohang.Columns.Add("SoLuong");
                tbgiohang.Columns.Add("ThanhTien");
            }
            else
                tbgiohang = (DataTable)bang;


            int dong = kiemtra(ID, tbgiohang);
            if (dong != -1)
            {
                tbgiohang.Rows[dong]["SoLuong"] = Convert.ToInt32(tbgiohang.Rows[dong]["SoLuong"]) + sl;
                tbgiohang.Rows[dong]["ThanhTien"] = int.Parse(tbgiohang.Rows[dong]["SoLuong"].ToString()) * int.Parse(tbgiohang.Rows[dong]["Gia"].ToString());
            }
            else
            {

                DataRow dr = tbgiohang.NewRow();
                
                dr["ID"] = ID;
                dr["TenSp"] = tensp;
                dr["Gia"] = gia;
                
                dr["SoLuong"] = sl;
                dr["ThanhTien"] = sl * gia;
                //thêm dòng vừa tạo vào table
                tbgiohang.Rows.Add(dr);
            }
            bang = tbgiohang;
            return bang;

        }

        public int kiemtra(string ID, DataTable dt)
        {
            int dong = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["ID"].ToString() == ID)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        } 
    }
    
}