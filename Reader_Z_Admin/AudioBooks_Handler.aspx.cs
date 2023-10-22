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
    public partial class AudioBooks_Handler : System.Web.UI.Page
    {
        helper help = new helper();

        String AudioFile = "";
        void fileUpload()
        {
            help.file = "Uploads/Images/CoverPhotos/" + new Random().Next(0, 99999) + fileCoverPhoto.FileName;

            fileCoverPhoto.SaveAs(Server.MapPath("../" + help.file));

            AudioFile = "Uploads/AudioBooks/" + new Random().Next(0, 99999) + fileAudioBook.FileName;

            fileAudioBook.SaveAs(Server.MapPath("../" + AudioFile));
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            fillLanguages();
            try
            {
                if (Request.QueryString["ID"] == null)
                {
                    lblHeader.Text = "Add Audio Book";
                    btnSubmit.Text = "Add New Audio Book";
                }
                else if (!IsPostBack)
                {
                    lblHeader.Text = "Edit Audio Book Details";
                    btnSubmit.Text = "Save Audio Book Details";
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

            DataSet ds = help.Select("select * from tbl_audiobooks where ID = '" + Request.QueryString["ID"] + "'");

            txtBookname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtAuthorname.Text = ds.Tables[0].Rows[0][2].ToString();
            txtBookDescription.Text = ds.Tables[0].Rows[0][3].ToString();
            ddLanguage.SelectedValue = ds.Tables[0].Rows[0][7].ToString();
            txtTags.Text = ds.Tables[0].Rows[0][8].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                help.GetCon();

                if (btnSubmit.Text == "Add New Audio Book")
                {
                    fileUpload();

                    help.cmd = new SqlCommand("insert into tbl_audiobooks(AudioBook_Name,Author_Name,Description,Audio_File,Cover_Photo,Language,Tags) values('" + txtBookname.Text + "','" + txtAuthorname.Text + "','" + txtBookDescription.Text + "','" + AudioFile + "','" + help.file + "','" + ddLanguage.Text + "','" + txtTags.Text + "')", help.con);

                    if (help.cmd.ExecuteNonQuery() > 0)
                    {
                        help.Redirector("AudioBook Added Successfully", "index.aspx");
                    }
                    else
                    {
                        help.Redirector("Operation Failed", "index.aspx");
                    }
                }

                if (btnSubmit.Text == "Save Audio Book Details")
                {
                    help.cmd = new SqlCommand("update tbl_audiobooks set AudioBook_Name = '" + txtBookname.Text + "',Author_Name = '" + txtAuthorname.Text + "',Description = '" + txtBookDescription.Text + "',Language='" + ddLanguage.SelectedValue + "',Tags='" + txtTags.Text + "' where ID = '" + Request.QueryString["ID"].ToString() + "'", help.con);

                    if (help.cmd.ExecuteNonQuery() > 0)
                    {
                        help.Redirector("Details Updated Successfully", "AudioBooks_Manager.aspx");
                    }
                    else
                    {
                        help.Redirector("Operation Failed", "AudioBooks_Manager.aspx");
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