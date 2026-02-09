using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System .Data.SqlClient;
using System.Data;


namespace BookApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data Source=DESKTOP-TCH9VOE\\SQLEXPRESS03;initial catalog=db_26425;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            display();

        }

        protected void btsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Library(Bookname,Price, author)values('"+txtbname.Text+"','"+txtbprice.Text+"','"+txtauthor.Text+"')", con);

            cmd.ExecuteNonQuery();
            con.Close();
            display();
        }
        public void display()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Library", con);
            SqlDataAdapter  da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            grd.DataSource = dt;
            grd.DataBind();
            con.Close();
           
        }
    }

    }
