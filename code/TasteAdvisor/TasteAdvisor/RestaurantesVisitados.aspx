<%@ Page Title="Restaurantes Visitados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RestaurantesVisitados.aspx.cs" Inherits="TasteAdvisor.RestaurantesVisitados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/speech-input.css" rel="stylesheet" type="text/css" />
    <div class="row">
        <div class="col-sm-offset-5">
            <asp:Image ImageURL="~/tasteadvisor.png" Text="Nome do prato" runat="server" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-3">
            <asp:TextBox ID="comment" runat="server" TextMode="MultiLine"></asp:TextBox>
            <p></p>
            <asp:Button ID="submitComment" runat="server" Text="Adicionar comentario" OnClick="submitComment_Click"/>
        </div>
    </div>
</asp:Content>
