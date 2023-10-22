using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReaderZ_LMS
{
    public partial class User_IssuedBooks : System.Web.UI.Page
    {
        helper help = new helper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["ID"] != null)
            {
                fillData();
            }
        }

        void fillData()
        {
            try
            {
                DataSet ds = help.Select("select * from tbl_issuedBooks where User_ID = '" + Session["ID"].ToString() + "' and Status = 'REQUESTED' or Status = 'ISSUED'");

                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
            catch(Exception x)
            {

            }
        }
    }
}