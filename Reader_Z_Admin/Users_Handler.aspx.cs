using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Users_Handler : System.Web.UI.Page
    {
        helper obj = new helper();

        String file = "";

        SqlCommand cmd;

        void fileUpload()
        {
            file = "Uploads/Images/ProfilePicture/" + new Random().Next(0,99999) + fileProfilePic.FileName;

            fileProfilePic.SaveAs(Server.MapPath("../" + file));
        }

        void Redirector(String msg, String location)
        {
            Response.Write("<script>alert('" + msg + "')</script>");

            Response.Write("<script>window.location='" + location + "'</script>");
        }

        void fillData()
        {
            DataSet ds = obj.Select("select * from tbl_users where ID = '" + Request.QueryString["ID"] + "'");

            txtName.Text = ds.Tables[0].Rows[0][1].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0][2].ToString();
            txtContact.Text = ds.Tables[0].Rows[0][3].ToString();
            ddGender.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
            txtAddress.Text = ds.Tables[0].Rows[0][5].ToString();
            ddCity.Text = ds.Tables[0].Rows[0][6].ToString();
            //fileProfilePic.PostedFile = ds.Tables[0].Rows[0][7].ToString();
            txtPassword.Text = ds.Tables[0].Rows[0][8].ToString();
        }

        void fillCities()
        {
            DataSet ds = obj.Select("select * from tbl_cities");

            try
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    ddCity.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                }
            }
            catch (Exception x)
            {

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                fillCities();
                if (Request.QueryString["ID"] == null)
                {
                    lblHeader.Text = "Add New User";
                    btnSubmit.Text = "Create User Account";
                }
                else if(!IsPostBack)
                {
                    lblHeader.Text = "Edit User Account";
                    btnSubmit.Text = "Save Account Details";
                    fillData();
                }
            }
            catch (Exception x)
            {
                Redirector("Page Not Working", "Users_Manage.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (btnSubmit.Text == "Create User Account")
                {
                    fileUpload();

                    int res = obj.Execute("insert into tbl_users(Name,Email,Contact_No,Gender,Address,City,ProfilePicture,Password) values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtContact.Text + "','" + ddGender.Text + "','" + txtAddress.Text + "','" + ddCity.SelectedValue + "','" + file + "','" + txtPassword.Text + "')");

                    if (res > 0)
                    {
                        Redirector("Account Created Successfully", "Users_Handler.aspx");
                    }
                    else
                    {
                        Redirector("Something Went Wrong", "Users_Handler.aspx");
                    }
                }

                if (btnSubmit.Text == "Save Account Details")
                {
                    int res = obj.Execute("update tbl_users set Name = '"+ txtName.Text +"',Email = '"+ txtEmail.Text +"',Contact_No = '"+ txtContact.Text +"',Gender = '"+ ddGender.Text +"',Address = '"+ txtAddress.Text +"',City = '"+ ddCity.SelectedValue +"',Password = '"+ txtPassword.Text +"' Where ID = '"+ Request.QueryString["ID"] +"' ");

                    if (res > 0)
                    {
                        Redirector("Details Updated Successfully", "Users_Manag" +
                            "er.aspx");
                    }
                    else
                    {
                        Redirector("Something Went Wrong Please Try Again", "Users_Manager.aspx");
                    }
                }
            }
            catch (Exception x)
            {
                Redirector("Something Went Wrong", "Users_Manager.aspx");
            }
        }
    }
}