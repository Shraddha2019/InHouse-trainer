using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1_19_06_2019
{
    public partial class register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into UserData values(@name,@Pass,@city,@gender,@mail)", con);
            cmd.Parameters.AddWithValue("name", TextBox1.Text);
            cmd.Parameters.AddWithValue("Pass", TextBox2.Text);
            cmd.Parameters.AddWithValue("city", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("gender", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("mail", TextBox4.Text);
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList1.SelectedValue = "";

            RadioButtonList1.SelectedValue = "";
            TextBox4.Text = "";
            TextBox4.Focus();
            Response.Redirect("login1.aspx");
        }

      
    }
}