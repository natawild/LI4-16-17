using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasteAdvisor
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitAccountButton_Click(object sender, EventArgs e)
        {
            SQL_API sql = new SQL_API();
            string query = @"insert into Utilizador(id,nome,password,email)
Values('"+ Guid.NewGuid().ToString()+@"', '"+ nameTextBox.Text+"', '"+ passwordTextBox.Text+ "', '"+ emailTextBox.Text +"')";
            sql.ExecQuery(query);
        }
    }
}