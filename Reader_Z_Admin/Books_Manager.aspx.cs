using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Books_Manager : System.Web.UI.Page
    {
        helper help = new helper();

        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            fillGrid("select * from tbl_books");
        }

        void fillGrid(String query)
        {
            help.GetCon();

            ds = help.Select(query);

            GridView1.DataSource = ds.Tables[0];

            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_delete")
            {
                int id = Convert.ToInt16(e.CommandArgument);

                int res = help.Execute("delete from tbl_books where ID = '" + id + "'");

                if (res > 0)
                {
                    help.Redirector("Record Deleted Successfully", "Books_Manager.aspx");
                }
                else
                {
                    help.Redirector("Record Deletion Failed", "Books_Manager.aspx");
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
            {
                fillGrid("select * from tbl_books");
            }
            else
            {
                fillGrid("select * from tbl_books where Book_Name = '" + txtSearch.Text + "'");
            }
        }
    }
}