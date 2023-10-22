using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class SignUp : System.Web.UI.Page
    {
        helper obj = new helper();

        String file = "";

        void fileUpload()
        {
            file = "Uploads/Images/ProfilePicture/" +  new Random().Next(0,99999) + fileProfilePic.FileName;

            fileProfilePic.SaveAs(Server.MapPath(file));
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            fillCities();
        }

        void fillCities()
        {
            ddCity.Items.Clear();

            DataSet ds = obj.Select("select * from tbl_cities");

            try
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    ddCity.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                }
            }
            catch(Exception x)
            {

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == txtConfPassword.Text)
            {
                fileUpload();

                obj.Execute("insert into tbl_users(Name,Email,Contact_No,Gender,Address,City,ProfilePicture,Password) values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtContact.Text + "','" + ddGender.Text + "','" + txtAddress.Text + "','"+ ddCity.SelectedValue +"','" + file + "','" + txtPassword.Text + "')");

                obj.Redirector("Account Created Successfully", "Login.aspx");
            }
            else
            {
                obj.Redirector("Passwords Doesnt Match", "SignUp.aspx");
            }
        }
    }
}