<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarPorProfesiones.aspx.cs" Inherits="Formularios_ListarPorProfesiones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 329px; top: 161px; left: 263px; position: absolute; width: 698px">
    
        <asp:Label ID="Label1" runat="server" style="height: 19px; top: 45px; left: 160px; position: absolute; width: 96px" Text="Elegir  Profecion"></asp:Label>
        <asp:DropDownList ID="ddlXprofe" runat="server" style="height: 17px; top: 48px; left: 287px; position: absolute; width: 252px">
        </asp:DropDownList>
    
        <asp:GridView ID="gvXprofe" runat="server" Height="197px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="311px" style="top: 117px; left: 197px; position: absolute">
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlSeleprofe" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlSelewhereprofe" runat="server"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
