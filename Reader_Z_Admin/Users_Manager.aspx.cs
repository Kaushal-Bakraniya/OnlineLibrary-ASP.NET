using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Users_Manage : System.Web.UI.Page
    {
        helper obj = new helper();

        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            fillGrid("select * from tbl_users");
        }

        void fillGrid(String query)
        {
            ds = obj.Select(query);

            GridView1.DataSource = ds.Tables[0];

            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_delete")
            {
                obj.GetCon();

                int id = Convert.ToInt32(e.CommandArgument);

                obj.Execute("delete from tbl_users where ID = '" + id + "'");

                Response.Write("<script>alert('Record Deleted Successfully')</script>");

                fillGrid("select * from tbl_users");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
            {
                fillGrid("select * from tbl_users");
            }
            else
            {
                fillGrid("select * from tbl_users where Name = '" + txtSearch.Text + "'");
            }
        }
    }
}