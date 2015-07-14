<%@ Page Title="" Language="C#" MasterPageFile="~/Proyectos.master" AutoEventWireup="true" CodeFile="RegistroEmp.aspx.cs" Inherits="Formularios_RegistroEmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 61%;
            top: 255px;
            left: 230px;
            position: absolute;
            height: 200px;
        }
        .auto-style10 {
        }
        .auto-style11 {
            height: 42px;
        }
        .auto-style13 {
            width: 286px;
            height: 35px;
        }
        .auto-style14 {
            height: 35px;
            width: 257px;
        }
        .auto-style15 {
            width: 286px;
            height: 36px;
        }
        .auto-style16 {
            height: 36px;
            width: 257px;
        }
        .auto-style17 {
            width: 286px;
            height: 38px;
        }
        .auto-style18 {
            height: 38px;
            width: 257px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
    Registrar&nbsp; Empleados</p>
    <table border="1" class="auto-style5">
        <tr>
            <td class="auto-style13">Documento</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtDocu" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Nombres</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtNom" runat="server" Width="154px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Apellidos</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtApell" runat="server" Width="154px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Direccion</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtDirec" runat="server" Width="154px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Telefono</td>
            <td class="auto-style18">
                <asp:TextBox ID="txtTele" runat="server" Width="153px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Email</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="153px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Profesion</td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddlProfe" runat="server" Height="22px" Width="168px" AutoPostBack="True" DataSourceID="sqlProfecion" DataTextField="Profesion" DataValueField="IdProfesion">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2" style="align-content:center">
                <asp:Button ID="btnRegis" runat="server" style="top: 326px; left: 315px; position: absolute; height: 28px; width: 158px" Text="Registrar Empleado" BorderStyle="Double" OnClick="btnRegis_Click" PostBackUrl="~/Formularios/ListarEmp.aspx" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlInsert" runat="server" ConnectionString="<%$ ConnectionStrings:bdProyectoConnectionString1 %>" InsertCommand="INSERT INTO Empleado(Documento, Nombre, Apellido, Direccion, Telefono, Email, IdProfesion) VALUES (@Documento, @Nombre, @Apellido, @Direccion, @Telefono, @Email, @Profesion)" ProviderName="<%$ ConnectionStrings:bdProyectoConnectionString1.ProviderName %>">
        <InsertParameters>
            <asp:ControlParameter ControlID="txtDocu" Name="Documento" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtNom" Name="Nombre" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtApell" Name="Apellido" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDirec" Name="Direccion" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtTele" Name="Telefono" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddlProfe" Name="Profesion" PropertyName="SelectedValue" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlProfecion" runat="server" ConnectionString="<%$ ConnectionStrings:bdProyectoConnectionString1 %>" ProviderName="<%$ ConnectionStrings:bdProyectoConnectionString1.ProviderName %>" SelectCommand="SELECT IdProfesion, Profesion FROM Profesion"></asp:SqlDataSource>
</asp:Content>

