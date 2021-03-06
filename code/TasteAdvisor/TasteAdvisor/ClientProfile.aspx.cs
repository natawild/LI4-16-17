﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasteAdvisor
{
    public partial class ClientProfile : System.Web.UI.Page
    {

        #region Properties
        User currentUser;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            currentUser = Session["user"] as User;
            currentUser.LoadSettings();
            if (!IsPostBack)
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = true;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
            }
            
        }


        #region loadEvents
        protected void menuTreeView_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TreeNode parent = new TreeNode();
                parent.Text = "Minhas Preferencias";

                TreeNode child = new TreeNode();
                child.Text = "Favoritos";
                parent.ChildNodes.Add(child);
                TreeNode childChild = new TreeNode();
                childChild.Text = "Restaurantes";
                child.ChildNodes.Add(childChild);
                childChild = new TreeNode();
                childChild.Text = "Pratos";
                child.ChildNodes.Add(childChild);
                child = new TreeNode();
                child.Text = "Não Favoritos";
                parent.ChildNodes.Add(child);
                childChild = new TreeNode();
                childChild.Text = "Restaurantes";
                child.ChildNodes.Add(childChild);
                childChild = new TreeNode();
                childChild.Text = "Pratos";
                child.ChildNodes.Add(childChild);
                child = new TreeNode();
                child.Text = "Outras Preferências";
                parent.ChildNodes.Add(child);

                menuTreeView.Nodes.Add(parent);
                parent = new TreeNode();
                parent.Text = "Meus Comentários";
                menuTreeView.Nodes.Add(parent);
                parent = new TreeNode();
                parent.Text = "Minhas Fotografias";
                menuTreeView.Nodes.Add(parent);
                parent = new TreeNode();
                parent.Text = "Editar Perfil";
                menuTreeView.Nodes.Add(parent);

            }
        }
        #endregion

        protected void menuTreeView_SelectedNodeChanged(object sender, EventArgs e)
        {
            if ((sender as TreeView).SelectedNode.Text.Trim() == "Minhas Preferências")
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = true;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Favoritos")
            {
                restaurantesFavoritosPanel.Visible = true;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = false;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
                SQL_API sql = new SQL_API();
                string query = @"
SELECT * from RestaurantesVisitados
inner join Restaurante on Restaurante.id=RestaurantesVisitados.restaurante
where utilizador='"+ currentUser.Id +"' AND favorito=1";
                DataTable dt = sql.GetDataTable(query);
                listviewrestaurantesfavoritos.DataSource = dt;
                listviewrestaurantesfavoritos.DataBind();

            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Restaurantes" && (sender as TreeView).SelectedNode.ValuePath.Contains("Não Favoritos"))
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = true;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = false;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
                SQL_API sql = new SQL_API();
                string query = @"
SELECT * from RestaurantesVisitados
inner join Restaurante on Restaurante.id=RestaurantesVisitados.restaurante
where utilizador='"+ currentUser.Id +"' AND naoFavorito=1";
                DataTable dt = sql.GetDataTable(query);
                listviewrestaurantesnaofavoritos.DataSource = dt;
                listviewrestaurantesnaofavoritos.DataBind();
            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Pratos" && (sender as TreeView).SelectedNode.ValuePath.Contains("Não Favoritos"))
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = true;
                outrasPreferenciasPanel.Visible = false;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Não Favoritos")
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = true;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = false;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
                SQL_API sql = new SQL_API();
                string query = @"
SELECT * from RestaurantesVisitados
inner join Restaurante on Restaurante.id=RestaurantesVisitados.restaurante
where utilizador='"+ currentUser.Id +"' AND naoFavorito=1";
                DataTable dt = sql.GetDataTable(query);
                listviewrestaurantesnaofavoritos.DataSource = dt;
                listviewrestaurantesnaofavoritos.DataBind();
            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Restaurantes" && (sender as TreeView).SelectedNode.ValuePath.Contains("Favoritos"))
            {
                restaurantesFavoritosPanel.Visible = true;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = false;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
                SQL_API sql = new SQL_API();
                string query = @"
SELECT * from RestaurantesVisitados
inner join Restaurante on Restaurante.id=RestaurantesVisitados.restaurante
where utilizador='"+ currentUser.Id +"' AND favorito=1";
                DataTable dt = sql.GetDataTable(query);
                listviewrestaurantesfavoritos.DataSource = dt;
                listviewrestaurantesfavoritos.DataBind();
            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Pratos" && (sender as TreeView).SelectedNode.ValuePath.Contains("Favoritos"))
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = true;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = false;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Outras Preferências")
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = true;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Meus Comentários")
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = false;
                meusComentariosPanel.Visible = true;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = false;
                SQL_API sql = new SQL_API();
                string query = @"
SELECT * from RestaurantesVisitados
inner join Restaurante on Restaurante.id=RestaurantesVisitados.restaurante
where utilizador='"+ currentUser.Id +"'";
                DataTable dt = sql.GetDataTable(query);
                listviewmenucomentarios.DataSource = dt;
                listviewmenucomentarios.DataBind();
            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Minhas Fotografias")
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = false;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = true;
                editarPerfilMainPanel.Visible = false;
            }
            else if ((sender as TreeView).SelectedNode.Text.Trim() == "Editar Perfil")
            {
                restaurantesFavoritosPanel.Visible = false;
                pratosFavoritosPanel.Visible = false;
                restaurantesNaoFavoritosPanel.Visible = false;
                pratosNaoFavoritosPanel.Visible = false;
                outrasPreferenciasPanel.Visible = false;
                meusComentariosPanel.Visible = false;
                minhasFotografiasPanel.Visible = false;
                editarPerfilMainPanel.Visible = true;
            }
        }
    }
}