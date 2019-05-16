using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace WebMACF
{
    public class XLDL
    {
        public string StrCnn = "Data Source=.;Initial Catalog=Blue_Tea;Integrated Security=True";
         public DataTable getData(string LenhSQL)
        {
            SqlConnection con = new SqlConnection(StrCnn);
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(LenhSQL, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;

            }
        }
        public int Execute(string LenhSQL)
        {
            int i = 0;
            try
            {
                using (SqlConnection con = new SqlConnection(StrCnn))
                {
                    using (SqlCommand cmd = new SqlCommand(LenhSQL, con))
                    {
                        con.Open();
                        i = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return i;
            }
            catch (Exception)
            {
                throw;
            }

        }

        //Truy van tra ve 1 gia tri
        public string getValue(string LenhSQL)
        {
            using (SqlConnection con = new SqlConnection(StrCnn))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(LenhSQL, con);
                string value = cmd.ExecuteScalar().ToString();
                con.Close();
                return (value);
            }
        }
    }
}