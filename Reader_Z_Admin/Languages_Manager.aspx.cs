using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Lanaguages_Manager : System.Web.UI.Page
    {
        helper help = new helper();
        protected void Page_Load(object sender, EventArgs e)
        {
            fillData();
        }

        void fillData()
        {
            DataSet ds = help.Select("select * from tbl_languages");

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            if (btnSubmit.Text == "Add Language")
            {
                int res = help.Execute("insert into tbl_languages(Languages) values('" + txtLanguage.Text + "')");

                if (res > 0)
                {
                    Response.Write("<script>alert('Record Inserted Successfully')</script>");
                    txtLanguage.Text = "";
                    fillData();
                }
                else
                {
                    Response.Write("<script>alert('Something Went Wrong')</script>");
                }
            }

            if (btnSubmit.Text == "Edit Record")
            {
                int res = help.Execute("update tbl_languages set Languages = '" + txtLanguage.Text + "' where ID = '" + ViewState["id"].ToString() + "'");

                if (res > 0)
                {
                    Response.Write("<script>alert('Record Updated Successfully')</script>");
                    ViewState["id"] = 0;
                    txtLanguage.Text = "";
                    btnSubmit.Text = "Add Language";
                    fillData();
                }
                else
                {
                    Response.Write("<script>alert('Something Went Wrong')</script>");
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_delete")
            {
                if (help.Execute("delete from tbl_languages where ID = '" + e.CommandArgument.ToString() + "'") > 0)
                {
                    Response.Write("<script>alert('Record Deleted Successfully')</script>");
                    fillData();
                }
                else
                {
                    Response.Write("<script>alert('Something Went Wrong')</script>");
                }
            }

            if (e.CommandName == "cmd_edit")
            {
                ViewState["id"] = Convert.ToInt32(e.CommandArgument.ToString());

                btnSubmit.Text = "Edit Record";

                DataSet ds = help.Select("select Languages from tbl_languages where ID = '" + e.CommandArgument.ToString() + "'");

                txtLanguage.Text = ds.Tables[0].Rows[0][0].ToString();
            }
        }
    }
}