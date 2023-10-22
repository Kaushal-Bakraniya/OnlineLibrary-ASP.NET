using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class UserProfile : System.Web.UI.Page
    {
        helper obj = new helper();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"] != null)
            {
                fillData();
            }
        }

        void fillData()
        {
            DataSet ds = obj.Select("select * from tbl_users where ID = '"+ Convert.ToInt16(Session["id"]) +"'");

            //Fill User Data At Left Side Card
            uimg.ImageUrl = ds.Tables[0].Rows[0][7].ToString();
            uname.Text = ds.Tables[0].Rows[0][1].ToString();
            uemail.Text = ds.Tables[0].Rows[0][2].ToString();
            uaddress.Text = ds.Tables[0].Rows[0][5].ToString();

            //Fill User Data At Right Side Card
            txtRegID.Text = ds.Tables[0].Rows[0][0].ToString();
            txtName.Text = ds.Tables[0].Rows[0][1].ToString();
            txtGender.Text = ds.Tables[0].Rows[0][4].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0][2].ToString();
            txtContact.Text = ds.Tables[0].Rows[0][3].ToString();
            txtAddress.Text = ds.Tables[0].Rows[0][5].ToString();
            txtCity.Text = ds.Tables[0].Rows[0][6].ToString();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();

            Response.Write("<script>alert('Logout..')</script>");
            Response.Write("<script>window.location='Login.aspx'</script>");
        }
    }
}