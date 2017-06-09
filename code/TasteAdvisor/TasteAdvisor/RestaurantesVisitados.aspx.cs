using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasteAdvisor
{
    public partial class RestaurantesVisitados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitComment_Click(object sender, EventArgs e)
        {
            SQL_API sql = new SQL_API();
            string utilizador = "21D83616-5D3F-4714-9EDE-95351874D105";
            string restaurante = Request["value"].ToString().Trim();
            string query = @"
insert into RestaurantesVisitados(id,utilizador,restaurante,favorito,naofavorito,comentario)
VALUES('" + Guid.NewGuid() + "', '"+ utilizador.Trim() + "', '"+ restaurante.Trim() +"', 1, 0,'"+ comment.Text.Trim() + "');";
            sql.ExecQuery(query);
            Response.Redirect("Default.aspx");
        }
    }
}