<%@ Page Title="Записная книжка" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NotebookWebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1><%: Title %></h1>
    <h3>Выберите действие:</h3>
        <a href="/Add" class="badge badge-primary">Добавить новый контакт</a><br>
        <a href="/View" class="badge badge-secondary">Просмотреть список контактов</a><br>
</asp:Content>
