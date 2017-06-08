<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TasteAdvisor.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-2 col-xs-offset-00 col-sm-2 col-sm-offset-0 col-md-2 col-md-offset-0 col-lg-2 col-lg-offset-0">
                <asp:Image ImageURL="~/tasteadvisor.png" Text="Nome do prato" runat="server" Height="120" />
            </div>
            <div class="col-xs-3 col-xs-offset-0 col-sm-3 col-sm-offset-0 col-md-3 col-md-offset-0 col-lg-3 col-lg-offset-0">
                <h1 style="color:blue" class="align-center">Criar Conta</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-xs-offset-1 col-sm-2 col-sm-offset-1 col-md-2 col-md-offset-1 col-lg-2 col-lg-offset-1">
                <p>Insira o nome:</p>
                <asp:TextBox Id="nameTextBox" runat="server" />
                <p>Insira o email:</p>
                <asp:TextBox Id="emailTextBox" runat="server" />
                <p>Insira a password:</p>
                <asp:TextBox Id="passwordTextBox" runat="server" />
                <p>Confirma a password:</p>
                <asp:TextBox Id="confirmPasswordTextBox" runat="server" />
                <p></p>
                <asp:Button ID="submitAccountButton" runat="server" Text="Criar conta"/>

            </div>
        </div>
    </div>
</asp:Content>
