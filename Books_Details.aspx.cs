using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class Book_Details : System.Web.UI.Page
    {
        helper help = new helper();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                fillData();
            }
            catch (Exception x)
            {

            }
        }

        void fillData()
        {
            DataSet ds = help.Select("select * from tbl_books where ID = '" + Request.QueryString["ID"] + "'");

            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
    }
}