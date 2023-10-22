using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class Login : System.Web.UI.Page
    {
        helper obj = new helper();
   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataSet ds = obj.Select("select ID from tbl_users where Email = '" + txtEmail.Text + "' and Password = '" + txtPassword.Text + "'");

            if(ds.Tables[0].Rows.Count > 0)
            {
                Session["id"] = ds.Tables[0].Rows[0][0].ToString();

                Response.Write("<script>alert('Welcome, User')</script>");
                Response.Write("<script>window.location='index.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Login Failed')</script>");
                Response.Write("<script>window.location='Login.aspx'</script>");
            }
        }
    }
}