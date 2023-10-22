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
    public partial class Books_Handler : System.Web.UI.Page
    {
        helper help = new helper();

        String AudioFile = "";

        void fileUpload()
        {
            help.file = "Uploads/Images/CoverPhotos/" + new Random().Next(0, 99999) + fileCoverPhoto.FileName;

            fileCoverPhoto.SaveAs(Server.MapPath("../" + help.file));
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            fillLanguages();
            try
            {
                if (Request.QueryString["ID"] == null)
                {
                    lblHeader.Text = "Add Books";
                    btnSubmit.Text = "Add New Book";
                }
                else if (!IsPostBack)
                {
                    lblHeader.Text += "Edit Book Details";
                    btnSubmit.Text = "Save Book Details";
                    fillData();
                }
            }
            catch (Exception x)
            {
                help.Redirector("Page Not Working Properly", "index.aspx");
            }
        }


        void fillLanguages()
        {
            DataSet ds = help.Select("select * from tbl_languages");

            try
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    ddLanguage.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                }
            }
            catch (Exception x)
            {

            }
        }

        void fillData()
        {
            help.GetCon();

            DataSet ds = help.Select("select * from tbl_books where ID = '" + Request.QueryString["ID"] + "'");

            txtBookname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtAuthorname.Text = ds.Tables[0].Rows[0][2].ToString();
            txtBookDescription.Text = ds.Tables[0].Rows[0][3].ToString();
            txtNoOfCopies.Text = ds.Tables[0].Rows[0][4].ToString();
            ddStatus.SelectedValue = ds.Tables[0].Rows[0][6].ToString();
            ddLanguage.SelectedValue = ds.Tables[0].Rows[0][7].ToString();
            txtTags.Text = ds.Tables[0].Rows[0][8].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (btnSubmit.Text == "Add New Book")
                {
                    fileUpload();

                    int res = help.Execute("insert into tbl_books(Book_Name,Author_Name,Description,No_of_Copies,Cover_Photo,Status,Language,Tags) values('" + txtBookname.Text + "','" + txtAuthorname.Text + "','" + txtBookDescription.Text + "','" + txtNoOfCopies.Text + "','" + help.file + "','" + ddStatus.SelectedValue + "','" + ddLanguage.SelectedValue + "','" + txtTags.Text + "')");

                    if (res > 0)
                    {
                        help.Redirector("Book Added Successfully", "index.aspx");
                    }
                    else
                    {
                        help.Redirector("Operation Failed", "index.aspx");
                    }
                }

                if (btnSubmit.Text == "Save Book Details")
                {
                    int res = help.Execute("update tbl_books set Book_Name = '" + txtBookname.Text + "',Author_Name = '" + txtAuthorname.Text + "',Description = '" + txtBookDescription.Text + "',No_of_Copies = '" + txtNoOfCopies.Text + "',Status = '" + ddStatus.Text + "',Language='" + ddLanguage.SelectedValue + "',Tags='" + txtTags.Text + "' where ID = '" + Request.QueryString["ID"].ToString() + "'");

                    if (res > 0)
                    {
                        help.Redirector("Details Updated Successfully", "Books_Manager.aspx");
                    }
                    else
                    {
                        help.Redirector("Operation Failed", "Books_Manager.aspx");
                    }
                }
            }
            catch (Exception x)
            {
                help.Redirector("Some Exception Occured", "index.aspx");
            }
        }
    }
}