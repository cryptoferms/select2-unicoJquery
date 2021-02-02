<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageTeste.aspx.cs" Inherits="select2_unicoJquery.PageTeste" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.5.1.js"></script>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.min.js"></script>
    <link href="Content/css/select2.css" rel="stylesheet" />
    <link href="Content/css/select2.min.css" rel="stylesheet" />
    <link href="Content/css/jquery-ui.css" rel="stylesheet" />
    <link href="Content/css/jquery-ui.min.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('#txtNome').autocomplete({
                source: 'Handler1.ashx'
            });
            $('.ddl').select2({

            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>auto completar</h2>
            Pesquise o nome de cliente:
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        </div>
        <h3>select 2</h3>
        <asp:DropDownList ID="DropDownList1" CssClass="ddl" runat="server" Width="200px" DataTextField="Nome"></asp:DropDownList>
    </form>
</body>
</html>
