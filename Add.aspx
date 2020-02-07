<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="NotebookWebForms.Add" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Добавление нового контакта</title>
<script async src="/Scripts/modernizr-2.8.3.js"></script>
<link href="/Content/bootstrap.css" rel="stylesheet"/>
<link  href="/Content/Site.css" rel="stylesheet"/>
<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
<div style="padding-left:30px;">
<h3>Добавление нового контакта:</h3>
<form method="post" action="/Result">
    <div class="form-group">
        <%Response.Write(String.Format($"<input hidden name=\"RecordId\" value=\"0\" />")); %>
        <p>
            <b>Имя: <span style="color:red;">*</span></b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"text\" name=\"Name\" placeholder=\"Имя\" maxlength=\"25\" required />")); %>
        </p>
        <p>
            <b>Фамилия:</b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"text\" name=\"Surname\" placeholder=\"Фамилия\" maxlength=\"25\" />")); %>
        </p>
        <p>
            <b>Отчество:</b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"text\" name=\"Patronymic\" placeholder=\"Отчество\" maxlength=\"25\" />")); %>
        </p>
        <p>
            <b>Номер телефона (в формате: 8xxxxxxxx): <span style="color:red;">*</span></b>
            <%Response.Write(String.Format("<input class='form-control' type='tel' name='PhoneNumber' placeholder='8xxxxxxxx' maxlength=\"11\" pattern='[0-9]{{11}}' required />")); %>
        </p>
        <p>
            <b>Email:</b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"email\" name=\"Email\" placeholder=\"test@mail.ru\" maxlength=\"25\" />")); %>
        </p>
        <p>
            <b>Заметки:</b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"text\" name=\"Note\" placeholder=\"Заметки\" maxlength=\"100\" />")); %>
        </p>
        <p><input class="btn btn-primary" type="submit" value="Отправить"/></p>
    </div>
</form>
</div>
</body>
</html>
