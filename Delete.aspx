<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="NotebookWebForms.Delete" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h3>
    <div style="text-align:center;">
        Контакт успешно удалён.<br>
        Сейчас Вы будете переадресованы на главную страницу сайта<br>
        Если это не произошло, перейдите на неё по <a href="/">прямой&nbsp;ссылке</a>.
    </div>
    </h3>
    <script>
    setTimeout('location="/"', 2000);
    </script>
</body>
</html>
