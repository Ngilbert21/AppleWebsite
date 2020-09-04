using NickGilbertPizza.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NickGilbertPizza
{
    public partial class Order : System.Web.UI.Page
    {
       

        double price = 0.0;  //Class level variable 
        protected void UpdatedPrice()
        {
            price = Convert.ToDouble(DropDownListPhoneStyle.SelectedValue);
            for (int i=0; i< 1 /*RadioButtonList1.Items.Count;*/; i++)
            {
                price += Convert.ToDouble(RadioButtonList1.Items[i].Value);

            }//close for loop
             

        }//close UpdatedPrice method

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

        //protected void CheckBoxListToppings_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (CheckBoxListToppings.Items.FindByText("Grilled Chicken").Selected)
        //    {
        //        ImageChicken.Visible = true;
        //    }
        //    else
        //    {
        //        ImageChicken.Visible = false;
        //    }
        //    if (CheckBoxListToppings.Items.FindByText("Pepperoni").Selected)
        //    {
        //        ImagePepperoni.Visible = true;
        //    }
        //    else
        //    {
        //        ImagePepperoni.Visible = false;
        //    }
        //    if (CheckBoxListToppings.Items.FindByText("Steak").Selected)
        //    {
        //        ImageSteak.Visible = true;
        //    }
        //    else
        //    {
        //        ImageSteak.Visible = false;
        //    }//close else 

        //}

        protected void ButtonNext_Click(object sender, EventArgs e)
        {
            UpdatedPrice();
            double priceWithTax = price * 1.07;
            string color = DropDownListPhoneColor.SelectedValue;
            //for (int i = 0; i < RadioButtonList1.Items.Count; i++)
            //{
            //    if (RadioButtonList1.Items[i].Selected)
            //    {
            //        color += RadioButtonList1.Items[i].Text + ", ";

            //    }
            //}//close for loop
            ShoppingCartUtil cart = new ShoppingCartUtil();

            cart.UserName = Session["user"].ToString(); 
            cart.PhoneSize = RadioButtonList1.SelectedItem.ToString();
            cart.PhoneStyle = DropDownListPhoneStyle.SelectedItem.ToString();
            cart.Color = color;
            cart.Price = priceWithTax;

            cart.InsertShoppingCart();
            LabelPrice.Text = "$" + priceWithTax;
            LabelPrice.ForeColor = Color.Red;
            Response.Redirect("OrderConfirm.aspx?=id"+cart.ID);
            //Response.Write("<script language=javascript> var agree;agree=confirm('You have successfully added into ShoppingCart table'); </script>");

        }

        protected void DropDownListPizzaSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}