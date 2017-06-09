<%@ Page Title="Cliente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientProfile.aspx.cs" Inherits="TasteAdvisor.ClientProfile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-4 col-xs-offset-5 col-sm-4 col-sm-offset-5 col-md-4 col-md-offset-5 col-lg-4 col-lg-offset-5">
                <asp:Image ImageURL="~/tasteadvisor.png"  runat="server" Height="180" />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 col-xs-offset-1 col-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                <p></p>
                <asp:TreeView ID="menuTreeView" runat="server" OnLoad="menuTreeView_Load" />
            </div>
            <div id="outrasprefCol" class="col-xs-4 col-xs-offset-0 col-sm-4 col-sm-offset-0 col-md-4 col-md-offset-0 col-lg-4 col-lg-offset-0">
                <h2>Outras Preferências</h2>
                <p></p>
                <div class="row">
                    <div class="col-xs-4 col-xs-offset-1 col-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                        <asp:Panel ID="outrasPreferencias" runat="server">
                            <p>Ingredientes que não gosto:</p>
                            <asp:Panel ID="ingredientesquenaogostopanel" runat="server" BorderWidth="1" BorderColor="Black"/>
                            <div class="row">
                                <asp:ListView ID="ingredientesListView" runat="server" >
                                </asp:ListView>
                                <div class="col-xs-4 col-xs-offset-1 col-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                                    <%--Coluna vazia--%>
                                </div>
                            </div>
                            <div class="row">
                            <p>Média de preços por pessoa:</p>
                                <div class="col-xs-12 col-xs-offset-1 col-sm-12 col-sm-offset-1 col-md-12 col-md-offset-1 col-lg-12 col-lg-offset-1">
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Menos de 10 euros" Width="200"/>
                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Entre 10 e 25 euros" Width="200"/>
                                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Mais de 25 euros" Width="200"/>
                                </div>
                             </div>
                            <div class="row">
                            <p>Localização:</p>
                             <div class="col-xs-12 col-xs-offset-1 col-sm-12 col-sm-offset-1 col-md-12 col-md-offset-1 col-lg-12 col-lg-offset-1">
                                    <asp:CheckBox ID="Checkbox4" runat="server" Text="Menos de 10 km" Width="200" />
                                    <asp:CheckBox ID="CheckBox5" runat="server" Text="Entre 10 e 25 km" Width="200"/>
                                    <asp:CheckBox ID="CheckBox6" runat="server" Text="Mais de 25 km" Width="200" />
                                </div>
                             </div>
                            <div class="row">
                            <p>Tipo de cozinha a evitar:</p>
                            <div class="col-xs-12 col-xs-offset-1 col-sm-12 col-sm-offset-1 col-md-12 col-md-offset-1 col-lg-12 col-lg-offset-1
                                    <asp:CheckBox id="portuguesa" runat="server" Text="Portuguesa"  Width="200"/>
                                    <asp:CheckBox id="chinesa" runat="server" Text="Chinesa"  Width="200"/>
                                    <asp:CheckBox id="italiana" runat="server" Text="Italiana"  Width="200"/>
                                    <asp:CheckBox id="mexicana" runat="server" Text="Mexicana"  Width="200"/>
                                    <asp:CheckBox id="vegetariana" runat="server" Text="Vegetariana"  Width="200"/>
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
         <%--Meus Comentários--%>
        <div class="row">

            <%--<div class="col-xs-4 col-xs-offset-1 col-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                <p></p>
                <asp:TreeView ID="TreeView1" runat="server" OnLoad="menuTreeView_Load" />
            </div>--%>
            <div id="meuscomentarioscol" class="col-xs-4 col-xs-offset-0 col-sm-4 col-sm-offset-0 col-md-4 col-md-offset-0 col-lg-4 col-lg-offset-0">
                <h2>Meus Comentários</h2>
                <asp:Panel ID="Panel1" runat="server" Width="1">

                </asp:Panel>
            
            </div>
        </div>
        
    </div>
    </div>
</asp:Content>
