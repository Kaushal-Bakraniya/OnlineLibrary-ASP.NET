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
    public partial class IssueBook_Form : System.Web.UI.Page
    {
        helper help = new helper();

        int Downloads = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            fillData();
        }

        void fillData()
        {
            try
            {
                DataSet ds = help.Select("select Email from tbl_users where ID = '" + Session["ID"] + "'");

                txtUserEmail.Text = ds.Tables[0].Rows[0][0].ToString();

                ds = help.Select("select Book_Name,No_of_Copies from tbl_books where ID = '" + Request.QueryString["ID"] + "' ");

                txtBookName.Text = ds.Tables[0].Rows[0][0].ToString();

                Downloads = Convert.ToInt16(ds.Tables[0].Rows[0][1].ToString());

                lblBookName.Text = ds.Tables[0].Rows[0][0].ToString();

                Issue_Date.Text = DateTime.Now.ToString("yyyy-MM-dd");

                Return_Date.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
            catch (Exception x)
            {

            }
        }

        protected void btnIssue_Click(object sender, EventArgs e)
        {
            try
            {
                help.GetCon();


                Downloads = Downloads - 1;

                if (Downloads != -1)
                {
                    help.Execute("update tbl_books set No_of_Copies = '" + Downloads + "',Status = 'AVAILABLE' where ID = '" + Request.QueryString["ID"] + "'");

                    if (help.Execute("insert into tbl_issuedBooks(Book_ID,User_ID,Issue_Date,Return_Date,Status) values('" + Request.QueryString["ID"] + "','" + Session["ID"] + "','" + Issue_Date.Text + "','" + Return_Date.Text + "','REQUESTED')") > 0)
                    {
                        help.Redirector("Issue Request Generated Successfully", "Books.aspx");
                    }
                    else
                    {
                        help.Redirector("Issue Request Failed", "Books.aspx");
                    }
                }
                else
                {
                    help.Execute("update tbl_books set Status = 'NOT AVAILABLE' where ID = '" + Request.QueryString["ID"] + "'");
                    help.Redirector("Book Not Available", "Books.aspx");
                }
            }
            catch(Exception x)
            {

            }
        }
    }
}