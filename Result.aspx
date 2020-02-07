<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="NotebookWebForms.Result" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Результат</title>
</head>
<body>
<h3>
    <div style="text-align:center;">
        Данные успешно переданы.<br>
        Сейчас Вы будете переадресованы на главную страницу сайта<br>
        Если это не произошло, перейдите на неё по <a href="/">прямой&nbsp;ссылке</a>.
    </div>
</h3>
<script>
    setTimeout('location="/"', 2000);
</script>
</body>
</html>
