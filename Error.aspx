<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="NotebookWebForms.Error" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Ошибка!</h1>
    <% Response.Write(String.Format($"Ошибка: {Request.QueryString["msg"]}")); %>
</body>
</html>
