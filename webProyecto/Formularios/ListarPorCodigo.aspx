<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarPorCodigo.aspx.cs" Inherits="Formularios_ListarPorCodigo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 282px; width: 525px; top: 58px; left: 15px; position: absolute">
    
        <asp:GridView ID="gvDatos" runat="server" Height="197px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="311px" style="top: 51px; left: 108px; position: absolute">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
