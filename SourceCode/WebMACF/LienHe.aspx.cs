using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;

namespace WebMACF
{
    public partial class LienHe : System.Web.UI.Page
    {
        XLDL x = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            load_data();
        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            //    SmtpClient SmtpServer = new SmtpClient();
            //    SmtpServer.Credentials = new System.Net.NetworkCredential("kidtranp@gmail.com", "131297ttp");
            //    SmtpServer.Port = 587;
            //    SmtpServer.Host = "smtp.gmail.com";
            //    SmtpServer.EnableSsl = true;
            //    MailMessage mail = new MailMessage();
            //    //SmtpClient SmtpServer = new SmtpClient();
            //    //SmtpServer.Credentials = new System.Net.NetworkCredential("kidtranp@gmail.com", "131297ttp");
            //    //SmtpServer.Port = 587;
            //    //SmtpServer.Host = "smtp.gmail.com";
            //    //SmtpServer.EnableSsl = true;
            //    //MailMessage mail = new MailMessage();


            //    try
            //    {
            //        mail.From = new MailAddress(txtEmail.Text, txtHoten.Text + " gửi từ form liên hệ", System.Text.Encoding.UTF8);
            //        mail.To.Add("kidtranp@gmail.com");
            //        mail.Subject = "Mail từ Form liên hệ BlueTea.com.vn";
            //        mail.Body = MailBody();
            //        mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            //        mail.ReplyTo = new MailAddress("kidtranp@gmail.com");
            //        mail.Priority = MailPriority.High;
            //        mail.IsBodyHtml = true;
            //        SmtpServer.Send(mail);

            //        Response.Write("<script>alert('BLUE TEA XIN CÁM ƠN NHỮNG ĐÓNG GÓP CỦA BẠN');</script>");
            //        ResetFrom();
            //    }
            //    catch (Exception ex) { Response.Write("<script>alert('GỬI THẤT BẠI');</script>"); }
            string str = " INSERT INTO LienHe(HoTen,SoDienThoai,Email,NoiDung)  VALUES ( N'" + txtHoten.Text + "', '" + txtSdt.Text + "', '" + txtEmail.Text + "',N'"+txtNoidung.Text+"')";
            x.Execute(str);
            Response.Write("<script>alert('Bạn đã gửi phản hồi thành công');</script>");
        }
        protected void load_data()
        {
            DataTable dt = x.getData("select HoTen, NoiDung from LienHe where KiemDuyet = N'Đã duyệt'");
            if (dt.Rows.Count > 0)
            {
                dtlPhanHoi.DataSource = dt;
                dtlPhanHoi.DataBind();
            }

        }
    //private string MailBody()
    //{
    //    string strHTML = "";
    //    strHTML += "Họ và tên: " + txtHoten.Text + "<br>";   
    //    strHTML += "Điện thoại: " + txtSdt.Text + "<br>";
    //    strHTML += "Email: " + txtEmail.Text + "<br>";
    //    strHTML += "Đã gửi qua Form liên hệ với thông điệp:<br><b>";
    //    strHTML += txtNoidung.Text + "</b>";
    //    return strHTML;
    //}

    protected void DataList1_Load(object sender, EventArgs e)
        {

        }

        protected void txtHoten_Load(object sender, EventArgs e)
        {

        }
    }
}