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
    public partial class index : System.Web.UI.Page
    {
        helper help = new helper();
        protected void Page_Load(object sender, EventArgs e)
        {
            setFigures();
            fillData();
        }

        void setFigures()
        {
            double total_books = 0.0;
            double total_audiobooks = 0.0;
            double total_ebooks = 0.0;
            double issued_books = 0.0;

            DataSet ds = new DataSet();
            try
            {
                ds = help.Select("select SUM(No_of_Copies) from tbl_books");

                total_books = Convert.ToInt16(ds.Tables[0].Rows[0][0]);

                ds = help.Select("select COUNT(*) from tbl_audiobooks");

                total_audiobooks = Convert.ToInt16(ds.Tables[0].Rows[0][0]);

                ds = help.Select("select COUNT(*) from tbl_ebooks");

                total_ebooks = Convert.ToInt16(ds.Tables[0].Rows[0][0]);

                ds = help.Select("select COUNT(*) from tbl_issuedBooks where Status != 'RETURNED'");

                issued_books = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
            }
            catch (Exception x)
            {

            }     
            
            issuedBooks1.Text = issued_books.ToString();

            issuedBooks2.Text = issued_books.ToString();

            totalBooks.Text = total_books.ToString();

            totalAudiobooks.Text = total_audiobooks.ToString();

            totalEBooks.Text = total_ebooks.ToString();
        }


        void fillData()
        {
            try
            {
                DataSet ds = help.Select("select * from tbl_issuedBooks where Status = 'REQUESTED' ");

                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception x)
            {

            }
        }

    }
}