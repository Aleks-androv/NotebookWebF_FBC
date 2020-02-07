<%@ Page Title="Записная книжка" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="NotebookWebForms.View" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Список контактов:</h3>
    <table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Имя</th>
            <th scope="col">Фамилия</th>
            <th scope="col">Отчество</th>
            <th scope="col">Номер телефона</th>
            <th scope="col">Email</th>
            <th scope="col">Примечание</th>
        </tr>
    </thead>
    <tbody>
         <% int i=0;
            foreach (var value in records)
            {
                string htmlString = String.Format($"<tr>" +
                    $"<th scope=\"row\">{++i}</th>" +
                    $"<td>{value.Name}</td>" +
                    $"<td>{value.Surname}</td>" +
                    $"<td>{value.Patronymic}</td>" +
                    $"<td>{value.PhoneNumber}</td>" +
                    $"<td>{value.Email}</td>" +
                    $"<td>{value.Note}</td>" +
                    $"<td><a href=\"/Edit?id={value.RecordId}\" class=\"badge badge-info\">Изменить контакт</a></td>" +
                    $"<td><a href=\"/Delete?id={value.RecordId}\" class=\"badge badge-danger\">Удалить контакт</a></td>" +
                    $"</tr>");
                Response.Write(htmlString);
            } %>
    </tbody>
    </table>
</asp:Content>