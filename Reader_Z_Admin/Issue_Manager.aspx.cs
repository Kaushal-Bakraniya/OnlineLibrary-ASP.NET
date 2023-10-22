using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Issue_Requests : System.Web.UI.Page
    {
        helper help = new helper();
        protected void Page_Load(object sender, EventArgs e)
        {
            fillData("Select * from tbl_issuedBooks Where Status = 'REQUESTED' or Status = 'ISSUED'");
        }
        void fillData(String query)
        {
            try
            {
                DataSet ds = help.Select(query);

                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
            catch(Exception x)
            {

            }
        }

        protected void ddStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddStatus.SelectedIndex == 0)
            {
                fillData("Select * from tbl_issuedBooks Where Status = 'REQUESTED' or Status = 'ISSUED'");
            }
            else 
            {
                fillData("Select * from tbl_issuedBooks Where Status = '" + ddStatus.Text + "'");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(txtSearch.Text == "")
            {
                fillData("Select * from tbl_issuedBooks Where Status = 'REQUESTED' or Status = 'ISSUED'");
            }
            else
            {
                fillData("Select * from tbl_issuedBooks Where Book_ID = '" + txtSearch.Text + "' and Status = 'REQUESTED' or Status = 'ISSUED'");
            }
        }
    }
}