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
    public partial class AudioBooks_Manager : System.Web.UI.Page
    {
        helper help = new helper();
        protected void Page_Load(object sender, EventArgs e)
        {
            fillGrid("select * from tbl_audiobooks");
        }

        void fillGrid(String query)
        {
            DataSet ds = help.Select(query);

            GridView1.DataSource = ds.Tables[0];

            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_delete")
            {
                help.GetCon();

                int id = Convert.ToInt16(e.CommandArgument);

                int res = help.Execute("delete from tbl_audiobooks where ID = '" + id + "'");

                if (res > 0)
                {
                    help.Redirector("Record Deleted Successfully", "AudioBooks_Manager.aspx");
                }
                else
                {
                    help.Redirector("Record Deletion Failed", "AudioBooks_Manager.aspx");
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
                fillGrid("select * from tbl_audiobooks");
            }
            else
            {
                fillGrid("select * from tbl_audiobooks where AudioBook_Name = '" + txtSearch.Text + "'");
            }
        }
    }
}