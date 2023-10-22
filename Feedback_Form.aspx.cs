using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class Feedback_Form : System.Web.UI.Page
    {
        helper help = new helper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["ID"] != null)
            {
                fillData();
            }
        }

        void fillData()
        {
            DataSet ds = help.Select("select Name,Email from tbl_users where ID = '" + Session["ID"].ToString() + "'");

            txtUserName.Text = ds.Tables[0].Rows[0][0].ToString();
            txtUserEmail.Text = ds.Tables[0].Rows[0][1].ToString();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            int res = help.Execute("insert into tbl_feedback(UID,Email,Feedback,Status) values('"+ Convert.ToInt16(Session["ID"]) + "','" + txtUserEmail.Text + "','" + txtFeedback.Text + "','NOT REVIEWED')");

            if(res > 0)
            {
                help.Redirector("Thanks for your feedback.","UserProfile.aspx");
            }
            else
            {
                help.Redirector("Something Went Wrong", "UserProfile.aspx");
            }
        }
    }
}