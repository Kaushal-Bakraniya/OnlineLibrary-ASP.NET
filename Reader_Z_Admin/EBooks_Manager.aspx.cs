using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class EBooks_Manager : System.Web.UI.Page
    {
        helper help = new helper();

        protected void Page_Load(object sender, EventArgs e)
        {
            fillGrid("select * from tbl_ebooks");
        }

        void fillGrid(String query)
        {
            DataSet ds = help.Select(query);

            GridView1.DataSource = ds.Tables[0];

            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
            {
                fillGrid("select * from tbl_ebooks");
            }
            else
            {
                fillGrid("select * from tbl_ebooks where EBook_Name = '" + txtSearch.Text + "'");
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_delete")
            {
                int id = Convert.ToInt16(e.CommandArgument);

                int res = help.Execute("delete from tbl_ebooks where ID = '" + id + "'");

                if (res > 0)
                {
                    help.Redirector("Record Deleted Successfully", "EBooks_Manager.aspx");
                }
                else
                {
                    help.Redirector("Record Deletion Failed", "EBooks_Manager.aspx");
                }
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}