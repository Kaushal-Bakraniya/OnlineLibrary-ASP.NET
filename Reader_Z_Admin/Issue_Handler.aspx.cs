using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS.Reader_Z_Admin
{
    public partial class Issue_Handler : System.Web.UI.Page
    {
        helper help = new helper();

        static int copies = 0;
        static int Book_ID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillData();
                if(Request.QueryString["OP"] == "Manage")
                {
                    lblHeader.Text = "Book Issue Handler";
                    txtFinalDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
                    btnDelete.Text = "Delete Request";
                    btnSubmit.Text = "Save Details";
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(btnSubmit.Text == "Save Details")
            {
                if(ddStatus.Text == "RETURNED")
                {
                    copies = copies + 1;
                    int r = help.Execute("update tbl_books set No_of_Copies = '" + copies + "' where ID = '" + Book_ID + "'");
                }       
            }

            int res = help.Execute("update tbl_issuedBooks Set Issue_Date = '" + txtIssueDate.Text + "',Return_Date = '" + txtReturnDate.Text + "',Final_Return_Date = '" + txtFinalDate.Text + "' ,Late_Days = '" + txtLateDays.Text + "',Fine = '" + txtFine.Text + "',Status = '" + ddStatus.SelectedValue + "' where ID = '" + Request.QueryString["ID"] + "'");

            if (res > 0)
            {
                help.Execute("update tbl_books Set No_of_Copies = '" + copies + "' where ID = '" + Book_ID + "'");
                help.Redirector("Book Details Updated Successfully", "Issue_Manager.aspx");
            }
            else
            {
                help.Redirector("Some Went Wrong", "Issue_Manager.aspx");
            }
        }

        void fillData()
        {
            try
            {
                DataSet ds = help.Select("select * from tbl_issuedBooks where ID = '" + Request.QueryString["ID"] + "'");

                Book_ID = Convert.ToInt16(ds.Tables[0].Rows[0][1].ToString());

                int User_ID = Convert.ToInt16(ds.Tables[0].Rows[0][2].ToString());

                txtIssueDate.Text = ds.Tables[0].Rows[0][3].ToString();
                txtReturnDate.Text = ds.Tables[0].Rows[0][4].ToString();
                txtFinalDate.Text = ds.Tables[0].Rows[0][5].ToString();
                txtLateDays.Text = ds.Tables[0].Rows[0][6].ToString();
                txtFine.Text = ds.Tables[0].Rows[0][7].ToString();
                ddStatus.Text = ds.Tables[0].Rows[0][8].ToString();

                ds = help.Select("select Name from tbl_users where ID = '" + User_ID + "'");

                txtUserName.Text = ds.Tables[0].Rows[0][0].ToString();

                ds = help.Select("select Book_Name from tbl_books where ID = '" + Book_ID + "'");

                txtBookName.Text = ds.Tables[0].Rows[0][0].ToString();

                ds = help.Select("select No_of_Copies from tbl_books where ID = '" + Book_ID + "'");

                copies = Convert.ToInt16(ds.Tables[0].Rows[0][0].ToString());
            }
            catch (Exception x)
            {
                help.Redirector("Some Exception Occured", "index.aspx");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int res = help.Execute("delete from tbl_issuedBooks where ID = '" + Request.QueryString["ID"] + "'");

                if (res > 0)
                {
                    help.Redirector("Record Deleted Successfully", "Issue_Manager.aspx");
                }
                else
                {
                    help.Redirector("Something went wrong", "Issue_Manager.aspx");
                }
            }
            catch (Exception x)
            {
                help.Redirector("Some Exception Occured", "Issue_Manager.aspx");
            }
        }
    }
}