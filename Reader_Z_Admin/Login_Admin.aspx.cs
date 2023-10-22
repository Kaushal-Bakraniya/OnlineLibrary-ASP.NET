using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Login_Admin : System.Web.UI.Page
    {
        helper obj = new helper();

        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["name"] != null)
            {
                Session.Clear();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataSet ds = obj.Select("select Username from tbl_admin where Username = '" + txtUname.Text + "' and Password = '" + txtPassword.Text + "'");

            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["name"] = ds.Tables[0].Rows[0][0].ToString();

                Response.Write("<script>alert('Welcome, User')</script>");
                Response.Write("<script>window.location='index.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Login Failed')</script>");
                Response.Write("<script>window.location='Login_Admin.aspx'</script>");
            }
        }
    }
}