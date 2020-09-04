using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace NickGilbertPizza.App_Code
{
    public class CustomerUtil
    {
        public string UserName { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Country { get; set; }
        public string Age { get; set; }
        public string Gender { get; set; }

        public void InsertData()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB2019"].ConnectionString);
            string insertString = "insert into Customer (UserName, FName, LName, Email, Country, Password, Age, Gender) values(@UserName, @FName, @LName, " +
                "@Email, @Country, @Password, @Age, @Gender)";
            conn.Open();
            SqlCommand comd = new SqlCommand(insertString, conn);
            comd.Parameters.AddWithValue("@UserName", UserName);
            comd.Parameters.AddWithValue("@FName", FName);
            comd.Parameters.AddWithValue("@LName", LName);
            comd.Parameters.AddWithValue("@Email", Email);
            comd.Parameters.AddWithValue("@Country", Country);
            comd.Parameters.AddWithValue("@Password", Password);
            comd.Parameters.AddWithValue("@Age", Age);
            comd.Parameters.AddWithValue("@Gender", Gender);

            comd.ExecuteNonQuery();
            conn.Close();
        }//close InsertData method
public bool CheckUserExist()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB2019"].ConnectionString);
            conn.Open();
            string checkUser = "select * from Customer where UserName=@UserName";
            SqlCommand comd = new SqlCommand(checkUser, conn);
            comd.Parameters.AddWithValue("@UserName", UserName);
            SqlDataReader dr = comd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                conn.Close();
                return true;
            }

            dr.Close();
            conn.Close();
            return false;
        }//Close CheckUserExist() method

        public bool CheckPassword()
        {//Start CheckPassword
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB2019"].ConnectionString);
            conn.Open();
            string checkUser = " select * from Customer where UserName=@UserName";
            SqlCommand comd = new SqlCommand(checkUser, conn);
            comd.Parameters.AddWithValue("@UserName", UserName);
            SqlDataReader dr = comd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                if (dr["Password"].ToString().Equals(Password))
                {
                    dr.Close();
                    conn.Close();
                    return true;
                }
            }

            dr.Close();
            conn.Close();
            return false;
        }//close checkPassword method
         //Start GetUserInformation method
        public CustomerUtil GetUserInformation(string userNameInput)
        {//Strat GetUserInformation
            CustomerUtil c = new CustomerUtil();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB2019"].ConnectionString);
            conn.Open();
            string searchStr = "select UserName, FName, LName, Email, Password, Country, Age, Gender from Customer where UserName=@UserName";

            SqlCommand comd = new SqlCommand(searchStr, conn);
            comd.Parameters.AddWithValue("@UserName", userNameInput);
            SqlDataReader dr = comd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                c.UserName = dr[0].ToString();
                c.FName = dr[1].ToString();
                c.LName = dr[2].ToString();
                c.Email = dr[3].ToString();
                c.Password = dr[4].ToString();
                c.Country = dr[5].ToString();
                c.Age = dr[6].ToString();
                c.Gender = dr[7].ToString();
            }
            dr.Close();
            conn.Close();
            return c;
        }//close GetUserInformation method
         //Start ResetPassowrd method
        public void ResetPassowrd(string newPassword)
        {//Start newPassword
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB2019"].ConnectionString);
            conn.Open();

            string updateStr = 
                "update Customer set Customer.Password=@Password where Customer.UserName=@UserName";
            SqlCommand comd = new SqlCommand(updateStr, conn);
            comd.Parameters.AddWithValue("@UserName", UserName);
            comd.Parameters.AddWithValue("@Password", newPassword);
            comd.ExecuteNonQuery();
            conn.Close();
        }//close ResetPassowrd method

    }//Close CustomerUtil class
}