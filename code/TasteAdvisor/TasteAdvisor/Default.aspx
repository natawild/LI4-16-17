<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TasteAdvisor._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-offset-5">
            <asp:Image ImageURL="~/tasteadvisor.png" Text="Nome do prato" runat="server" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-5">
            <p> Escreva ou dite o nome do prato que deseja</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-5">
            <asp:TextBox ID="SearchBar" runat="server" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-5">
            <asp:Panel ID="Scroll" ScrollBars="Vertical" runat="server">
                <asp:Repeater ID="RestaurantList" runat="server">

                </asp:Repeater>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
