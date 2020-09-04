using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace NickGilbertPizza.App_Code
{
    public class ShoppingCartUtil
    {
        public string ID { get; set; }
        public string UserName { get; set; }
        public string PhoneSize { get; set; }
        public string PhoneStyle { get; set; }
        public string Color { get; set; }
        public double Price { get; set; }

        public void InsertShoppingCart()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB2019"].ConnectionString);
            conn.Open();
            string qryStr = "insert into [NewShoppingCart] values (@UserName, @PhoneSize, @PhoneStyle, @Color, @Price) select @@identity";
            ////@@IDENTITY returns the last identity value generated for any table in the current session
            SqlCommand cmd = new SqlCommand(qryStr, conn);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@PhoneSize", PhoneSize);
            cmd.Parameters.AddWithValue("@PhoneStyle", PhoneStyle);
            cmd.Parameters.AddWithValue("@Color", Color);
            cmd.Parameters.AddWithValue("@Price", Price);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            ID = dr[0].ToString();
            dr.Close();
            conn.Close();
        }//close insertShoppingCart method

        public void ReadRecordById()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB2019"].ConnectionString);
            conn.Open();
            string qryStr = "select * from NewShoppingCart where (id = @id)";
            SqlCommand cmd = new SqlCommand(qryStr, conn);
            cmd.Parameters.AddWithValue("@id", ID);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            ID = dr["Id"].ToString();
            UserName = dr["UserName"].ToString();
            PhoneSize = dr["PhoneSize"].ToString();
            PhoneStyle = dr["PhoneStyle"].ToString();
            Color = dr["Color"].ToString();
            Price = Convert.ToDouble(dr["Price"].ToString());
            dr.Close();
            conn.Close();
        }//close readRecordById method

        public void RemoveRecord()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB2019"].ConnectionString);
            conn.Open();
            string qryStr = "delete from [NewShoppingCart] where (Id = @id)";
            SqlCommand cmd = new SqlCommand(qryStr, conn);
            cmd.Parameters.AddWithValue("@id", ID);
            cmd.ExecuteNonQuery();
            conn.Close();
        }//close RemoveRecord method

    }
}