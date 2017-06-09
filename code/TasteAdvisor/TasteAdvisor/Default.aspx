<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TasteAdvisor._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/speech-input.css" rel="stylesheet" type="text/css" />
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
            <input type="text" id="SearchParameter" runat="server" class="speech-input" placeholder="Que deseja comer?" data-buttonsize="20" >
            <asp:button ID="searchButton" runat="server" Width="128px" OnClick="searchButton_Click" Text="Pesquisar" ForeColor="Black"/>
            <script src="Scripts/speech-input.js"></script>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-5">
            <asp:Panel ID="Scroll" ScrollBars="Vertical" runat="server">
                <asp:ListView ID="RestauranteResult" runat="server">
                    <ItemTemplate>
                        <asp:Panel runat="server" BorderWidth="1" BorderColor="Black">
                            Prato:
                            <%# Eval("nome") %>
                            <p></p>
                            Restaurante:
                            <%# Eval("nome1") %>
                            <p></p>
                            Morada:
                            <%# Eval("morada") %>
                            <asp:Button ID="visitadoButton" runat="server" Text="Visitei" CommandArgument='<%# Eval("id1") %>' OnClick="visitadoButton_Click"/>
                            <asp:Button ID="bloquearRestauranteButton" runat="server" Text="Bloquear" CommandArgument='<%# Eval("id1") %>' OnClick="bloquearRestauranteButton_Click"/>
                        </asp:Panel>
                    </ItemTemplate>
                </asp:ListView>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
