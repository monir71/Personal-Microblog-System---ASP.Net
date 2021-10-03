using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace Personal_Microblog_System
{
    public partial class SearchArticle : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["PersonalBlog"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Blogs WHERE Heading LIKE '%" + SearchTextBox.Text + "%'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }
    }
}