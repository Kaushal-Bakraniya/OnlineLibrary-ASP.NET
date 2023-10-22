using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class TEST_DATA : System.Web.UI.Page
    {
        helper help = new helper();

        DataSet ds;
        PagedDataSource pg;

        int pos = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            FillData("select * from tbl_books ORDER BY ID DESC");

            if (!IsPostBack)
            {
                ddLangauge.Items.Add("ALL LANGUAGES");

                fillLanguages();

                ViewState["pos"] = 0;
            }

            pos = Convert.ToInt16(ViewState["pos"]);
        }

        void fillLanguages()
        {
            DataSet ds = help.Select("select * from tbl_languages");

            try
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    ddLangauge.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                }
            }
            catch (Exception x)
            {

            }
        }

        void FillData(String query)
        {
            try
            {
                ds = help.Select(query);

                pg = new PagedDataSource();

                pg.DataSource = ds.Tables[0].DefaultView;
                pg.PageSize = 6;
                pg.AllowPaging = true;
                pg.CurrentPageIndex = pos;

                btnPrev.Enabled = !pg.IsFirstPage;
                btnNext.Enabled = !pg.IsLastPage;

                DataList1.DataSource = pg;

                DataList1.DataBind();

                DataList1.RepeatColumns = 3;
            }
            catch (Exception x)
            {

            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            pos = 0;
            ViewState["pos"] = pos;

            if (txtSearch.Text == "")
            {
                ddLangauge.SelectedIndex = 0;
                FillData("select * from tbl_books ORDER BY ID DESC");
            }
            else
            {
                if (ddLangauge.SelectedIndex == 0)
                {
                    FillData("select * from tbl_books where Book_Name='" + txtSearch.Text + "' ORDER BY ID DESC");
                }
                else
                {
                    FillData("select * from tbl_books where Book_Name = '" + txtSearch.Text + "' and Language = '" + ddLangauge.Text + "' ORDER BY ID DESC");
                }
            }
        }

        protected void ddLangauge_SelectedIndexChanged(object sender, EventArgs e)
        {
            pos = 0;
            ViewState["pos"] = pos;

            if (ddLangauge.SelectedIndex == 0)
            {
                FillData("select * from tbl_books ORDER BY ID DESC");
            }
            else
            {
                FillData("select * from tbl_books where Language = '" + ddLangauge.SelectedValue + "' ORDER BY ID DESC");
            }
        }

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            pos = Convert.ToInt16(ViewState["pos"]);
            pos = pos - 1;
            ViewState["pos"] = pos;
            FillData("select * from tbl_books ORDER BY ID DESC");
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            pos = Convert.ToInt16(ViewState["pos"]);
            pos = pos + 1;
            ViewState["pos"] = pos;
            FillData("select * from tbl_books ORDER BY ID DESC");
        }
    }
}