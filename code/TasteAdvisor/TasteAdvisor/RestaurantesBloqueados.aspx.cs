using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasteAdvisor
{
    public partial class RestaurantesBloqueados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBlock_Click(object sender, EventArgs e)
        {
            SQL_API sql = new SQL_API();
            string utilizador = "37841934-0180-432C-9D72-945EF847E810";
            string restaurante = Request["value"].ToString().Trim();
            string query = @"
insert into RestaurantesVisitados(id,utilizador,restaurante,favorito,naofavorito,comentario)
VALUES('" + Guid.NewGuid() + "', '"+ utilizador.Trim() + "', '"+ restaurante.Trim() +"', 0, 1,'"+ blockReason.Text.Trim() + "');";
            sql.ExecQuery(query);
            Response.Redirect("Default.aspx");
        }
    }
}