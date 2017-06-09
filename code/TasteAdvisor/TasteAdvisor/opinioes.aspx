<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TasteAdvisor._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-offset-3">
            <p></p>
            <p>Escreva ou dite o nome do prato que deseja</p>
        </div>

        <div class="col-sm-offset-1">
            <asp:Image ImageURL="~/tasteadvisor.png" Text="Nome do prato" runat="server" Height="104px" ImageAlign="Left" Width="160px" />
            <asp:TextBox ID="SearchBar" runat="server" Width="229px" />
             <asp:Button ID="searchButton" runat="server" Width="128px" OnClick="searchButton_Click" Text="Pesquisar" ForeColor="Black" />
             <asp:ImageButton ID="searchVoice" runat="server" Width="25px" OnClick="searchButton_Click" ImageUrl="~/imagens/voice.png" Height="17px" />
        </div>
    </div>
    <div class="row">
         <h2 style="color:blue; position: fixed; z-index: auto; line-height: 0px; vertical-align: bottom; text-align: left; text-indent: inherit; white-space: normal; word-spacing: normal; letter-spacing: inherit;" class="align-center" contenteditable="true">Opinioes</h2>
    </div>
    <div class="row">
        <div class="col-sm-offset-0">
        </div>
    </div>
    <div class="row">
        
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


