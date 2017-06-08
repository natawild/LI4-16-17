using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasteAdvisor
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SQL_API sql = new SQL_API();
            string query = @"
select * from Utilizador
where email='" + emailLoginTextBox.Text + "';";
            DataTable dt = sql.GetDataTable(query);
            if (dt.Rows.Count == 0)
            {
                invalidLogin.Text = "Invalid Login";
            }
            else
            {
                User utilizador = dt.AsEnumerable().Select(z => new User()
                {
                    Email = z["email"].ToString(),
                    Password = z["password"].ToString()
                }).First();
                if (utilizador.Password.Trim() != passwordLoginTextBox.Text.Trim())
                {
                    invalidLogin.Text = "Invalid Login";
                }
                else
                {
                    invalidLogin.Text = "";
                    //propriedade a definir
                }
            }
        }
    }
}