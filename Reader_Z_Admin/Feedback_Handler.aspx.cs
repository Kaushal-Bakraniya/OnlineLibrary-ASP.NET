using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Feedback_Handler : System.Web.UI.Page
    {
        helper help = new helper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["ID"] != null)
            {
                fillData();
            }
        }

        void fillData()
        {
            DataSet ds = help.Select("select * from tbl_Feedback where ID = '" + Request.QueryString["ID"] + "'");

            txtUserEmail.Text = ds.Tables[0].Rows[0][2].ToString();

            txtFeedback.Text = ds.Tables[0].Rows[0][3].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int res = help.Execute("update tbl_feedback set Status = 'REVIEWED' where ID = '" + Request.QueryString["ID"] + "'");
            
            if(res > 0)
            {
                help.Redirector("Feedback Reviewd Successfully","Feedback_Manager.aspx");
            }
            else
            {
                help.Redirector("Something Went Wrong", "Feedback_Manager.aspx");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int res = help.Execute("delete from tbl_feedback where ID = '" + Request.QueryString["ID"] + "'");

            if (res > 0)
            {
                help.Redirector("Feedback Deleted Successfully", "Feedback_Manager.aspx");
            }
            else
            {
                help.Redirector("Something Went Wrong", "Feedback_Manager.aspx");
            }
        }
    }
}