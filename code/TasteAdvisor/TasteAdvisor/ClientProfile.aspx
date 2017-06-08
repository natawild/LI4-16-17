<%@ Page Title="Cliente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientProfile.aspx.cs" Inherits="TasteAdvisor.ClientProfile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-4 col-xs-offset-5 col-sm-4 col-sm-offset-5 col-md-4 col-md-offset-5 col-lg-4 col-lg-offset-5">
                <asp:Image ImageURL="~/tasteadvisor.png" Text="Nome do prato" runat="server" Height="180" />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 col-xs-offset-1 col-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                <h2>Editar minhas preferências</h2>
                <p></p>
                <asp:TreeView Id="menuTreeView" runat="server" OnLoad="menuTreeView_Load"/>
            </div>
            <div id="menuFavoritos" class="col-xs-4 col-xs-offset-0 col-sm-4 col-sm-offset-0 col-md-4 col-md-offset-0 col-lg-4 col-lg-offset-0">
                <h2>Meu perfil</h2>
                <p></p>


                <asp:Border ID="outrasPreferencias" runat="server" Text="Outras Preferências"></asp:Border>
                <asp:TextBox ID="teste1" runat="server" Text="teste2"/>
            </div>
        </div>
    </div>
</asp:Content>
