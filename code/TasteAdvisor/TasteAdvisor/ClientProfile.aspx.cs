using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasteAdvisor
{
    public partial class ClientProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
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
            TreeNode node = new TreeNode();
            menuTreeView.FindNode("Minhas Preferências");
            foreach (TreeNode no in node.ChildNodes)
            {
                if (no.Text == "Favoritos")
                {
                    //outrasPreferencias.Visible = no.Selected;

                }
                if(no.Text == "Não Favoritos")
                {

                }
            }
        }
        #endregion
    }
}