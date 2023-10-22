using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Issue_History : System.Web.UI.Page
    {
        helper help = new helper();
        protected void Page_Load(object sender, EventArgs e)
        {
            fillData("Select * from tbl_issuedBooks Where Status = 'RETURNED'");
        }

        void fillData(String query)
        {
            try
            {
                DataSet ds = help.Select(query);

                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception x)
            {

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(txtSearch.Text == "")
            {
                fillData("Select * from tbl_issuedBooks Where Status = 'RETURNED'");
            }
            else
            {
                fillData("Select * from tbl_issuedBooks Where Status = 'RETURNED' and Book_ID = '" + txtSearch.Text + "'");
            }
        }
    }
}