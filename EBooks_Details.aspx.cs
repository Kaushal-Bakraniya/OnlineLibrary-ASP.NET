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
    public partial class EBooks_Details : System.Web.UI.Page
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
            DataSet ds = help.Select("select * from tbl_ebooks where ID = '" + Request.QueryString["ID"] + "'");

            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_download")
            {
                try
                {
                    DataSet ds = help.Select("select PDF_File,Downloads from tbl_ebooks where ID = '" + Request.QueryString["ID"] + "'");

                    String filename = ds.Tables[0].Rows[0][0].ToString();

                    int downloads = Convert.ToInt16(ds.Tables[0].Rows[0][1].ToString());

                    downloads = downloads + 1;

                    int res = help.Execute("update tbl_ebooks set Downloads = '" + downloads + "' where ID = '" + Request.QueryString["ID"] + "'");

                    if (res > 0)
                    {
                        Response.ContentType = "application/octet-stream";
                        Response.AppendHeader("content-disposition", "attachment;filename=ebook.pdf");
                        Response.TransmitFile(Server.MapPath("~/" + filename));
                        Response.End();
                    }
                }
                catch (Exception x)
                {

                }
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}