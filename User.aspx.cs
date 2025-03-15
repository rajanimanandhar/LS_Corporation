using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace CourseworkDataWeb
{
    public partial class User : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "INSERT INTO USERS (USERID, NAME, EMAIL, CONTACT) VALUES (@USERID, @NAME, @EMAIL, @CONTACT)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@USERID", txtUserID.Text.Trim());
                    cmd.Parameters.AddWithValue("@NAME", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@EMAIL", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@CONTACT", txtContact.Text.Trim());

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            // Refresh GridView after insertion
            BindGrid();

            // Clear fields after submission
            txtUserID.Text = "";
            txtName.Text = "";
            txtEmail.Text = "";
            txtContact.Text = "";
        }

        private void BindGrid()
        {
            GridView1.DataBind();
        }
    }
}
