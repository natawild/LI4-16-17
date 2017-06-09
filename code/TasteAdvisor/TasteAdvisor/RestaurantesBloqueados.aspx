<%@ Page Title="Restaurantes Bloqueados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RestaurantesBloqueados.aspx.cs" Inherits="TasteAdvisor.RestaurantesBloqueados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/speech-input.css" rel="stylesheet" type="text/css" />
    <div class="row">
        <div class="col-sm-offset-5">
            <asp:Image ImageURL="~/tasteadvisor.png" Text="Nome do prato" runat="server" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-3">
            <asp:TextBox ID="blockReason" runat="server" TextMode="MultiLine"></asp:TextBox>
            <p></p>
            <asp:Button ID="submitBlock" runat="server" Text="Bloquear" OnClick="submitBlock_Click"/>
        </div>
    </div>
</asp:Content>
