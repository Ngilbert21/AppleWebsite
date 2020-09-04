using NickGilbertPizza.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NickGilbertPizza
{
    public partial class OrderConfirm : System.Web.UI.Page
    {
        string addressId;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCheckOut_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(addressId))
            {
                //Access Delivery_Address table
                AddressUtil adr = new AddressUtil();
                adr.AddressType = TextBoxAddressType.Text;
                adr.UserName = Session["user"].ToString();
                adr.Phone = TextBoxPhone.Text;
                adr.AddressLine1 = TextBoxAddressLine1.Text;
                adr.AddressLine2 = TextBoxAddressLine2.Text;
                adr.ZipCode = TextBoxZipCode.Text;

                adr.InsertAddress();
                addressId = adr.Delivery_ID;
            }

            Response.Redirect("Thanks.aspx");

        }
    }
}