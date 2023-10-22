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
    public partial class Edit_Profile : System.Web.UI.Page
    {
        helper obj = new helper();

        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    fillData();
                }
            }

        }

        void fillData()
        {
            fillCities();

            DataSet ds = obj.Select("select * from tbl_users where ID = '" + Convert.ToInt16(Session["id"]) + "'");

            //Fill User Data At Right Side Card
            txtRegID.Text = Session["id"].ToString();
            txtName.Text = ds.Tables[0].Rows[0][1].ToString();
            ddGender.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0][2].ToString();
            txtContact.Text = ds.Tables[0].Rows[0][3].ToString();
            txtAddress.Text = ds.Tables[0].Rows[0][5].ToString();
            ddCity.Text = ds.Tables[0].Rows[0][6].ToString();
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

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            obj.GetCon();

            obj.Execute("update tbl_users set Name = '" + txtName.Text + "',Email= '" + txtEmail.Text + "',Contact_No= '" + txtContact.Text + "',Gender= '" + ddGender.SelectedValue + "',Address= '" + txtAddress.Text + "',City = '" + ddCity.SelectedValue + "',Password= '" + txtPassword.Text + "' where ID = '" + Convert.ToInt32(Session["id"]) + "' ");

            obj.Redirector("Details Updated Successfully", "Edit_Profile.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            obj.Execute("delete from tbl_users where ID = '" + Convert.ToInt32(Session["id"]) + "' ");

            Session.Clear();

            obj.Redirector("Account Deleted Successfully", "Login.aspx");
        }
    }
}