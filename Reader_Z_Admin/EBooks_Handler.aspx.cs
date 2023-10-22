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
    public partial class EBooks_Handler : System.Web.UI.Page
    {
        helper help = new helper();

        String PDF_File = "";
        void fileUpload()
        {
            help.file = "Uploads/Images/CoverPhotos/" + new Random().Next(0, 99999) + fileCoverPhoto.FileName;

            fileCoverPhoto.SaveAs(Server.MapPath("../" + help.file));

            PDF_File = "Uploads/E_Books/" + new Random().Next(0, 99999) + fileEBook.FileName;

            fileEBook.SaveAs(Server.MapPath("../" + PDF_File));
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            fillLanguages();
            try
            {
                if (Request.QueryString["ID"] == null)
                {
                    lblHeader.Text = "Add E-Book";
                    btnSubmit.Text = "Add New E-Book";
                }
                else if (!IsPostBack)
                {
                    lblHeader.Text = "Edit E-Book Details";
                    btnSubmit.Text = "Save E-Book Details";
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

            DataSet ds = help.Select("select * from tbl_ebooks where ID = '" + Request.QueryString["ID"] + "'");

            txtBookname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtAuthorname.Text = ds.Tables[0].Rows[0][2].ToString();
            txtBookDescription.Text = ds.Tables[0].Rows[0][3].ToString();
            txtNoOfPages.Text = ds.Tables[0].Rows[0][4].ToString();
            ddLanguage.Text = ds.Tables[0].Rows[0][8].ToString();
            txtTags.Text = ds.Tables[0].Rows[0][9].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                help.GetCon();

                if (btnSubmit.Text == "Add New E-Book")
                {
                    fileUpload();

                    help.cmd = new SqlCommand("insert into tbl_ebooks(EBook_Name,Author_Name,Description,No_of_Pages,PDF_File,Cover_Photo,Language,Tags) values('" + txtBookname.Text + "','" + txtAuthorname.Text + "','" + txtBookDescription.Text + "','" + txtNoOfPages.Text + "','" + PDF_File + "','" + help.file + "','" + ddLanguage.SelectedValue + "','" + txtTags.Text + "')", help.con);

                    if (help.cmd.ExecuteNonQuery() > 0)
                    {
                        help.Redirector("E-Book Added Successfully", "index.aspx");
                    }
                    else
                    {
                        help.Redirector("Operation Failed", "index.aspx");
                    }
                }

                if (btnSubmit.Text == "Save E-Book Details")
                {
                    help.cmd = new SqlCommand("update tbl_ebooks set EBook_Name = '" + txtBookname.Text + "',Author_Name = '" + txtAuthorname.Text + "',Description = '" + txtBookDescription.Text + "',No_of_Pages = '" + txtNoOfPages.Text + "',Language = '" + ddLanguage.Text + "',Tags = '" + txtTags.Text + "' where ID = '" + Request.QueryString["ID"].ToString() + "'", help.con);

                    if (help.cmd.ExecuteNonQuery() > 0)
                    {
                        help.Redirector("Details Updated Successfully", "EBooks_Manager.aspx");
                    }
                    else
                    {
                        help.Redirector("Operation Failed", "EBooks_Manager.aspx");
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
