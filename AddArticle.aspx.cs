using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Personal_Microblog_System
{
    public partial class AddArticle : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["PersonalBlog"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Blogs", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

        

        protected void ArticleSubmitButton_Click(object sender, EventArgs e)
        {
            string title = ArticleTitleTextBox.Text;
            string desc = ArticleDescriptionnTextarea.Text;

            if(ArticleTitleTextBox.Text == string.Empty || ArticleDescriptionnTextarea.Text == string.Empty)
            {
                ArticleSubmitStateLabel.Text = "Empty Article couldn't be submitted!";
                return;
            }
            string dt = DateTime.Now.ToString("yyyy'-'MM'-'dd'T'HH':'mm':'ss");

            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("INSERT INTO Blogs (PostDate, Heading, Description) VALUES(@dt, @title, @desc)", con);
            cmd.Parameters.AddWithValue("@dt", dt);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@desc", desc);

            con.Open();

            cmd.ExecuteNonQuery();

            ArticleSubmitStateLabel.Text = "Successfull!";

            ArticleTitleTextBox.Text = "";
            ArticleDescriptionnTextarea.Text = "";

            Response.Redirect("AddArticle.aspx");
        }
    }
}