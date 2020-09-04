using NickGilbertPizza.App_Code;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NickGilbertPizza
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonResetPassword_Click(object sender, EventArgs e)
        {
            CustomerUtil c = new CustomerUtil().GetUserInformation(TextBoxUserName.Text);
            if (c.Email.Equals(TextBoxEmail.Text))
            {

                int rand = new Random().Next(100000, 999999);
                string newPassoword = "bsu" + rand;  // bsu663873
                c.ResetPassowrd(newPassoword);  //call ResetPassword method
                LabelMessage.Visible = true;
                LabelMessage.Text = "Your password has been reset, please check your email to get it!";
                LabelMessage.ForeColor = Color.Red;
                sendNotification(c.Email, newPassoword);

            }//close if 
        }//close ButtonResetPassword_Click method  

        protected void sendNotification(string email, String newPassoword)
        {
            SmtpClient smtpClient = new SmtpClient("smtp.office365.com", 587);
            smtpClient.UseDefaultCredentials = true;
            //YourEmail is actually a company sender’s email; 
            smtpClient.Credentials = new System.Net.NetworkCredential("nagilbert@bsu.edu", "frfrf");
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();

            //Setting From , To and CC
            mail.From = new MailAddress("nagilbert@bsu.edu", "bsuPizzaCompany", System.Text.Encoding.UTF8);
            mail.To.Add(new MailAddress(email));
            mail.Subject = "Reset Password";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Your password has been reset as " + newPassoword;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            smtpClient.Send(mail);

        }//close sendNotification method

    }//Close ResetPassword class
}//Close namespace
