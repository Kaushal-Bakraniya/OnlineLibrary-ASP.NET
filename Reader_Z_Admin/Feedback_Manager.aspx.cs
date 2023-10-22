using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Feedback_Manager : System.Web.UI.Page
    {
        helper help = new helper();

        protected void Page_Load(object sender, EventArgs e)
        {
            fillData("Select * from tbl_feedback Where Status = 'NOT REVIEWED'");
        }

        void fillData(String query)
        {
            DataSet ds = help.Select(query);

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void ddStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            fillData("Select * from tbl_feedback Where Status = '" + ddStatus.Text + "'");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
            {
                fillData("Select * from tbl_feedback Where Status = 'NOT REVIEWED'");
            }
            else
            {
                fillData("Select * from tbl_feedback Where Email = '" + txtSearch.Text + "'");
            }
        }
    }
}