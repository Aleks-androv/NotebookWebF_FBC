<%@ Page Title="Записная книжка" Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="NotebookWebForms.Edit" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Редактирование контакта</title>
<script async src="/Scripts/modernizr-2.8.3.js"></script>
<link href="/Content/bootstrap.css" rel="stylesheet"/>
<link  href="/Content/Site.css" rel="stylesheet"/>
<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
<div style="padding-left:30px;">
<h3>Редактирование контакта:</h3>
<form method="post" action="/Result">
    <div class="form-group">
        <%Response.Write(String.Format($"<input hidden name=\"RecordId\" value=\"{EditRecord.RecordId}\" />")); %>
        <p>
            <b>Имя: <span style="color:red;">*</span></b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"text\" name=\"Name\" placeholder=\"Имя\" maxlength=\"25\" value=\"{EditRecord.Name}\" required />")); %>
        </p>
        <p>
            <b>Фамилия:</b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"text\" name=\"Surname\" placeholder=\"Фамилия\" maxlength=\"25\" value=\"{EditRecord.Surname}\" />")); %>
        </p>
        <p>
            <b>Отчество:</b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"text\" name=\"Patronymic\" placeholder=\"Отчество\" maxlength=\"25\" value=\"{EditRecord.Patronymic}\" />")); %>
        </p>
        <p>
            <b>Номер телефона (в формате: 8xxxxxxxx): <span style="color:red;">*</span></b>
            <%Response.Write(String.Format("<input class='form-control' type='tel' name='PhoneNumber' value='{0}' placeholder='8xxxxxxxx' maxlength=\"11\" pattern='[0-9]{{11}}' required />", EditRecord.PhoneNumber)); %>
        </p>
        <p>
            <b>Email:</b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"email\" name=\"Email\" placeholder=\"test@mail.ru\" maxlength=\"25\" value=\"{EditRecord.Email}\" />")); %>
        </p>
        <p>
            <b>Заметки:</b>
            <%Response.Write(String.Format($"<input class=\"form-control\" type=\"text\" name=\"Note\" placeholder=\"Заметки\" maxlength=\"100\" value=\"{EditRecord.Note}\" />")); %>
        </p>
        <p><input class="btn btn-primary" type="submit" value="Отправить"/></p>
    </div>
</form>
</div>
</body>
</html>