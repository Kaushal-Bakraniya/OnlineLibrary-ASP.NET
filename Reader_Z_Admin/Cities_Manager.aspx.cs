using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Cities_Manager : System.Web.UI.Page
    {
        helper help = new helper();

        protected void Page_Load(object sender, EventArgs e)
        {
            fillData();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(btnSubmit.Text == "Add New City")
            {
                int res = help.Execute("insert into tbl_cities(City) values('" + txtCity.Text + "')");

                if(res > 0)
                {
                    Response.Write("<script>alert('Record Inserted Successfully')</script>");
                    txtCity.Text = "";
                    fillData();
                }
                else
                {
                    Response.Write("<script>alert('Something Went Wrong')</script>");
                }
            }

            if (btnSubmit.Text == "Edit Record")
            {
                int res = help.Execute("update tbl_cities set City = '" + txtCity.Text + "' where ID = '" + ViewState["id"].ToString() + "'");

                if(res > 0)
                {
                    Response.Write("<script>alert('Record Updated Successfully')</script>");
                    ViewState["id"] = 0;
                    txtCity.Text = "";
                    btnSubmit.Text = "Add New City";
                    fillData();
                }
                else
                {
                    Response.Write("<script>alert('Something Went Wrong')</script>");
                }
            }
        }

        void fillData()
        {
            DataSet ds = help.Select("select * from tbl_cities");

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "cmd_delete")
            {
                if (help.Execute("delete from tbl_cities where ID = '" + e.CommandArgument.ToString() + "'") > 0)
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

                DataSet ds = help.Select("select City from tbl_cities where ID = '" + e.CommandArgument.ToString() + "'");

                txtCity.Text = ds.Tables[0].Rows[0][0].ToString();
            }
        }
    }
}