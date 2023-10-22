using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class Index : System.Web.UI.Page
    {
        helper help = new helper();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            fillBooks();
            fillAudioBooks();
            fillEBooks();
        }
        
        void fillBooks()
        {
            DataSet ds = help.Select("SELECT TOP 3 *FROM tbl_books ORDER BY ID DESC");

            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }

        void fillAudioBooks()
        {
            DataSet ds = help.Select("SELECT TOP 3 *FROM tbl_audiobooks ORDER BY ID DESC");

            DataList2.DataSource = ds.Tables[0];
            DataList2.DataBind();
        }

        void fillEBooks()
        {
            DataSet ds = help.Select("SELECT TOP 3 *FROM tbl_ebooks ORDER BY ID DESC");

            DataList3.DataSource = ds.Tables[0];
            DataList3.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}