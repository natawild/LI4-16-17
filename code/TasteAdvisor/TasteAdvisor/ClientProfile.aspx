<%@ Page Title="Cliente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientProfile.aspx.cs" Inherits="TasteAdvisor.ClientProfile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-4 col-xs-offset-5 col-sm-4 col-sm-offset-5 col-md-4 col-md-offset-5 col-lg-4 col-lg-offset-5">
                <asp:Image ImageUrl="~/tasteadvisor.png" runat="server" Height="180" />
            </div>
        </div>
        <div id="mainrow" class="row">
            <%--Inicio TreeView Lateral--%>
            <div class="col-xs-2 col-xs-offset-1 col-sm-2 col-sm-offset-1 col-md-2 col-md-offset-1 col-lg-2 col-lg-offset-1">
                <p></p>
                <asp:TreeView ID="menuTreeView" runat="server" OnLoad="menuTreeView_Load" OnSelectedNodeChanged="menuTreeView_SelectedNodeChanged" />
            </div>
            <%--Fim TreeView Lateral--%>
            <div id="maincol" class="col-xs-3 col-xs-offset-0 col-sm-3 col-sm-offset-0 col-md-5 col-md-offset-0 col-lg-5 col-lg-offset-0">
                <%--Inicio do Menu Favoritos--%>
                    <%--Restaurantes favoritos--%>
                    <asp:Panel ID="restaurantesFavoritosPanel" runat="server" BorderWidth="1" BorderColor="Black">
                        <div class="col-xs-6 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                            <p>Restaurantes favoritos:</p>
                            <asp:ListView runat="server" ID="listviewrestaurantesfavoritos">
                                <ItemTemplate>
                                    <asp:Panel runat="server" BorderWidth="1" BorderColor="Black">

                                Restaurante:
                                    <%# Eval("nome") %>
                                    <p></p>
                                    Comentario:
                                    <%# Eval("comentario") %>
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </asp:Panel>
                    <%--Pratos favoritos--%>
                    <asp:Panel ID="pratosFavoritosPanel" runat="server" >
                        <div class="col-xs-6 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                            <p>Pratos favoritos:</p>
                            <asp:ListView runat="server" ID="listviewpratosfavoritos">
                                <ItemTemplate>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </asp:Panel>
                <%--Fim do Menu Favoritos--%>
                <%--Inicio do Menu Nao favoritos--%>
                    <%--Restaurantes não favoritos--%>
                    <asp:Panel ID="restaurantesNaoFavoritosPanel" runat="server">
                        <div class="col-xs-6 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                            <p>Restaurantes não favoritos:</p>
                            <asp:ListView runat="server" ID="listviewrestaurantesnaofavoritos">
                                <ItemTemplate>
                                    <asp:Panel runat="server" BorderWidth="1" BorderColor="Black">

                                Restaurante:
                                    <%# Eval("nome") %>
                                    <p></p>
                                    Comentario:
                                    <%# Eval("comentario") %>
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </asp:Panel>
                    <%--Pratos não favoritos--%>
                    <asp:Panel ID="pratosNaoFavoritosPanel" runat="server">
                        <div class="col-xs-6 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                            <p>Pratos não favoritos:</p>
                            <asp:ListView runat="server" ID="listviewpratosnaofavoritos">
                                <ItemTemplate>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </asp:Panel>
                <%--Fim do Menu Nao favoritos --%>
                <%--Inicio do Menu Outras preferencias--%>
                <asp:Panel ID="outrasPreferenciasPanel" runat="server">
                    <div class="col-xs-6 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                        <asp:Label runat="server" Text="Outras Preferencias" Font-Size="Medium" />
                        <asp:Panel ID="outrasPreferencias" runat="server" BorderWidth="1" BorderColor="Black" Width="800">
                            <div class="container">
                                <div class="col-md-4">
                                    <!--panel-->
                                    <div class="panel panel-default">
                                        <p>Ingredientes que não gosto:</p>
                                        <div class="panel-body">
                                            <p>Grelos</p>
                                            <p>Salsichas</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-8 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                                    <p>Média de preços por pessoa:</p>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Menos de 10 euros" Width="200" />
                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Entre 10 e 25 euros" Width="200" />
                                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Mais de 25 euros" Width="200" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                                    <p>Localização:</p>

                                    <asp:CheckBox ID="Checkbox4" runat="server" Text="Menos de 10 km" Width="200" />
                                    <asp:CheckBox ID="CheckBox5" runat="server" Text="Entre 10 e 25 km" Width="200" />
                                    <asp:CheckBox ID="CheckBox6" runat="server" Text="Mais de 25 km" Width="200" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                                    <p>Tipo de cozinha a evitar:</p>
                                    <asp:CheckBox ID="portuguesa" runat="server" Text="Portuguesa" Width="200" />
                                    <asp:CheckBox ID="chinesa" runat="server" Text="Chinesa" Width="200" />
                                    <asp:CheckBox ID="italiana" runat="server" Text="Italiana" Width="200" />
                                    <asp:CheckBox ID="mexicana" runat="server" Text="Mexicana" Width="200" />
                                    <asp:CheckBox ID="vegetariana" runat="server" Text="Vegetariana" Width="200" />
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </asp:Panel>
                <%--Fim do Menu outras preferencias--%>

                <%--Inicio do Menu meus comentarios--%>
                <asp:Panel ID="meusComentariosPanel" runat="server">
                    <div class="col-xs-6 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                        <p>Meus comentários:</p>
                        <asp:ListView runat="server" ID="listviewmenucomentarios">
                            <ItemTemplate>
                                <asp:Panel runat="server" BorderWidth="1" BorderColor="Black">

                                Restaurante:
                                    <%# Eval("nome") %>
                                    <p></p>
                                    Comentario:
                                    <%# Eval("comentario") %>
                                    <asp:Button runat="server" Text="Editar" />
                                    </asp:Panel>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </asp:Panel>
                <%--Fim do Menu meus comentarios--%>

                <%--Inicio do Menu Minhas fotografias--%>
                <asp:Panel ID="minhasFotografiasPanel" runat="server">
                    <div class="col-xs-6 col-xs-offset-1 col-sm-6 col-sm-offset-1 col-md-6 col-md-offset-1 col-lg-6 col-lg-offset-1">
                        <p>Minhas fotografias:</p>
                        <asp:ListView runat="server" ID="listviewminhasfotografias">
                            <ItemTemplate>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </asp:Panel>
                <%--Fim do Menu Minhas fotografias--%>

                <%--Inicio Menu Editar Perfil--%>
                <asp:Panel ID="editarPerfilMainPanel" runat="server">
                    <div class="col-xs-8 col-xs-offset-5 col-sm-8 col-sm-offset-5 col-md-8 col-md-offset-5 col-lg- col-lg-offset-5">
                        <asp:Label runat="server" Text="Editar Perfil" />
                        <!--panel-->
                        <asp:Panel ID="editarperfilpanel" runat="server" BorderWidth="1" BorderColor="Black">
                            <div class="panel-heading">Dados</div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">Nome</div>
                                    <div class="col-md-6">Admin</div>
                                    <div class="col-md-6">
                                        <asp:LinkButton runat="server" ID="LinkButton1">Editar</asp:LinkButton>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">Contacto</div>
                                    <div class="col-md-6">admin@admin.com</div>
                                    <div class="col-md-6">
                                        <asp:LinkButton runat="server" ID="LinkButton2">Editar</asp:LinkButton>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">Palavra-Passe</div>
                                    <div class="col-md-6">******</div>
                                    <div class="col-md-6">
                                        <asp:LinkButton runat="server" ID="LinkButton3">Editar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </asp:Panel>
                <%--Fim Menu Editar Perfil--%>
            </div>
        </div>
    </div>
</asp:Content>
