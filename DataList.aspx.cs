using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class DataList : System.Web.UI.Page
    {
        helper help = new helper();

        DataSet ds;
        PagedDataSource pg;

        protected void Page_Load(object sender, EventArgs e)
        {
            fillList();
        }

        void fillList()
        {
            ds = help.Select("select * from tbl_books");

            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            /*if(e.CommandName == "abc")
            {
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("Books_Details.aspx?ID='" + id + "'");
            }*/
        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}