using NickGilbertPizza.App_Code;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace NickGilbertPizza
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            CustomerUtil c = new CustomerUtil();
            c.UserName = TextBoxUserName.Text;
            c.FName = TextBoxFName.Text;
            c.LName = TextBoxLName.Text;
            c.Email = TextBoxEmail.Text;
            c.Country = DropDownListCountry.SelectedItem.ToString();
            c.Password = TextBoxPassword.Text;
            c.Age = TextBoxAge.Text;
            if (RadioButtonFemale.Checked)
            {
                c.Gender = "F";
            }
            else
            {
                c.Gender = "M";
            }
            if (c.CheckUserExist() == false)
            {
                c.InsertData();
                LabelWelcome.Text = "You just registered with server!";
                LabelWelcome.ForeColor = Color.Red;
                Response.AddHeader("refresh", "4, url=Home.aspx");
            }//close if
            else
            {
                LabelWelcome.Text = "User already Existed!!";
                LabelWelcome.ForeColor = Color.Red;
                Response.AddHeader("refresh", "4, url=Login.aspx");
            }

        }
    }
}
