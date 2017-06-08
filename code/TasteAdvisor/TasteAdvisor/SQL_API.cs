using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace TasteAdvisor
{
    public class SQL_API: System.Web.UI.Page
    {
        #region Constructor
        public SQL_API()
        {
            con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
            
        }
        #endregion

        #region Properties
        SqlConnection con;
        #endregion

        #region Methods

        public void ExecQuery(string query)
        {
            con.Open();
            SqlCommand command = con.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = query;
            command.ExecuteNonQuery();
            con.Close();
        }

        public DataTable GetDataTable(string query)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            con.Close();
            return dt;
        }
        #endregion
    }
}