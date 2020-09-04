using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace NickGilbertPizza.App_Code
{
    public class ContactUtil
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Content { get; set; }
        public string Time { get; set; }
        public ContactUtil()
        {
        }
        public void InsertLog()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pizzaDB2019"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into ContactLog(Name, Content) values (@Name, @Content)";
            SqlCommand comd = new SqlCommand(insertQuery, conn);
            comd.Parameters.AddWithValue("@Name", Name);
            comd.Parameters.AddWithValue("@Content", Content);
            comd.ExecuteNonQuery();
            conn.Close();
        }

    }// close class
}//close namespace