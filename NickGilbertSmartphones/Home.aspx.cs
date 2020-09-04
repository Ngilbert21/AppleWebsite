using NickGilbertPizza.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NickGilbertPizza
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                LabelWelcome.Text = "Please <a href='Login.aspx'>log in</a> first, " + LabelWelcome.Text;
            }
            else
            {
                LabelWelcome.Text = Session["user"].ToString() + ", " + LabelWelcome.Text;
            }

        }

        protected void ButtonContact_Click(object sender, EventArgs e)
        {
            ContactUtil con = new ContactUtil();
            con.Name = TextBoxName.Text;
            con.Content = TextBoxContact.Text;
            con.InsertLog();
            LabelMessage.Text = "Sending Successful!";
            ButtonContact.Visible = false;
            LabelMessage.Visible = true;

        }
    }
}