using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class Main : System.Web.UI.MasterPage
    {
        helper obj = new helper();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"] != null)
            {
                DataSet ds = obj.Select("select Name from tbl_users where ID = '"+ Convert.ToInt32(Session["id"]) +"' ");

                userPage.Text = ds.Tables[0].Rows[0][0].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}