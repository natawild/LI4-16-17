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
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Nome nao pode ser vazio" ControlToValidate="nameTextBox"/>
                <p>Insira o email:</p>
                <asp:TextBox Id="emailTextBox" runat="server" />
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Email nao pode ser vazio" ControlToValidate="emailTextBox">
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="emailTextBox" ErrorMessage="Introduza um email valido" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
                </asp:RequiredFieldValidator>
                <p>Insira a password:</p>
                <asp:TextBox Id="passwordTextBox" runat="server" TextMode="Password"/>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Password nao pode ser vazio" ControlToValidate="passwordTextBox">
                    
                </asp:RequiredFieldValidator>
                <p>Confirma a password:</p>
                <asp:TextBox Id="confirmPasswordTextBox" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator runat="server" ErrorMessage="A password nao pode ser vazia" ControlToValidate="confirmPasswordTextBox">
                    <asp:CompareValidator runat="server" ControlToValidate="confirmPasswordTextBox" ControlToCompare="passwordTextBox" ErrorMessage="A password tem de ser igual"></asp:CompareValidator>
                </asp:RequiredFieldValidator>
                <p></p>
                <asp:Button ID="submitAccountButton" runat="server" Text="Criar conta" OnClick="submitAccountButton_Click"/>

            </div>
        </div>
    </div>
</asp:Content>
