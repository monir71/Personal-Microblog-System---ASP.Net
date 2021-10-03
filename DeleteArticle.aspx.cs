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
    public partial class DeleteArticle : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["PersonalBlog"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Blogs", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //SqlConnection con = new SqlConnection(connectionString);
            //GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            //Label lbldeleteid = (Label)row.FindControl("lblID");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("delete FROM Blogs where id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            //cmd.ExecuteNonQuery();
            //con.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}