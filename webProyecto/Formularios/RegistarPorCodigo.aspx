<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistarPorCodigo.aspx.cs" Inherits="Formularios_RegistarPorCodigo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 280px;
        }
        .auto-style2 {
            width: 280px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 97px;
        }
        .auto-style5 {
            width: 256px;
        }
        .auto-style6 {
            height: 23px;
            width: 256px;
        }
        .auto-style7 {
            height: 97px;
            width: 256px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="top: 55px; left: 230px; position: absolute; height: 365px; width: 608px">
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Documento</td>
                <td>
                    <asp:TextBox ID="txtDocu" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDocu" ErrorMessage="Falta llenar este campo"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Nombre</td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Apellido</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtApell" runat="server" Width="176px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Direccion</td>
                <td>
                    <asp:TextBox ID="txtDire" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="179px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Telefono</td>
                <td>
                    <asp:TextBox ID="txtTele" runat="server" Width="179px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Profesion</td>
                <td>
                    <asp:DropDownList ID="ddlProfe" runat="server" Height="16px" Width="188px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="btnRegisCod" runat="server" OnClick="btnRegisCod_Click" style="top: 224px; left: 231px; position: absolute; height: 26px; width: 163px; margin-top: 0px" Text="Registrar Por Codigo" />
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    
</body>
</html>
