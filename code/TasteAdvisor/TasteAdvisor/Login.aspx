<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TasteAdvisor.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-4 col-xs-offset-5 col-sm-4 col-sm-offset-5 col-md-4 col-md-offset-5 col-lg-4 col-lg-offset-5">
                <asp:Image ImageURL="~/tasteadvisor.png" Text="Nome do prato" runat="server" Height="180" />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 col-xs-offset-1 col-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
                <h2>Iniciar sessão</h2>
                <p></p>
                <p>Insira o email:</p>
                <asp:TextBox Id="emailLoginTextBox" runat="server" />
                <p>Insira password:</p>
                <asp:TextBox Id="passwordLoginTextBox" runat="server" TextMode="Password" />
                <p></p>
                <asp:Button ID="LoginButton" runat="server" Text="Iniciar Sessão" OnClick="LoginButton_Click"/>
                <p> </p>
                <asp:Label ID="invalidLogin" runat="server" ForeColor="Red" />
                <p>Nao tem conta?</p>
                <asp:Button ID="createAccountButton" runat="server" Text="Criar conta" />
            </div>
        </div>
    </div>
</asp:Content>
