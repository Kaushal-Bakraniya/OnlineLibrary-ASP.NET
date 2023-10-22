using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace ReaderZ_LMS
{
    public class helper
    {
        String s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|DB_ReaderZ.mdf;Integrated Security=True";

        public String file = "";

        public SqlConnection con;

        public SqlCommand cmd;

        DataSet ds;

        public void GetCon()
        {
            con = new SqlConnection(s);

            con.Open();
        }

        public DataSet Select(String query)
        {
            GetCon();

            ds = new DataSet();

            SqlDataAdapter da = new SqlDataAdapter(query,con);

            da.Fill(ds);

            return ds;
        }

        public int Execute(String query)
        {
            try
            {
                GetCon();

                SqlCommand cmd = new SqlCommand(query, con);

                return cmd.ExecuteNonQuery();
            }
            catch (Exception x)
            {

            }

            return 0;
        }

        public void Redirector(String msg, String location)
        {
            System.Web.HttpContext.Current.Response.Write("<script>alert('" + msg + "')</script>");

            System.Web.HttpContext.Current.Response.Write("<script>window.location='" + location + "'</script>");
        }

    }
}