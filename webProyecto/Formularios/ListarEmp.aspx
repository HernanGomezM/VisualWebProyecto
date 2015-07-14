<%@ Page Title="" Language="C#" MasterPageFile="~/Proyectos.master" AutoEventWireup="true" CodeFile="ListarEmp.aspx.cs" Inherits="Formularios_ListarEmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center; height: 70px;">
    Listar Empleados<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." CellPadding="4" ForeColor="#333333" GridLines="None" Width="902px" style="top: 263px; left: 81px; position: absolute; height: 157px" DataKeyNames="IdEmpleado">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdProyectoConnectionString1 %>" DeleteCommand="DELETE FROM [Empleado] WHERE [IdEmpleado] = @IdEmpleado" InsertCommand="INSERT INTO [Empleado] ([Documento], [Nombre], [Apellido], [Direccion], [Telefono], [Email], [IdProfesion]) VALUES (@Documento, @Nombre, @Apellido, @Direccion, @Telefono, @Email, @IdProfesion)" SelectCommand="SELECT Documento, Nombre, Apellido, Direccion, Telefono, Email, IdEmpleado, IdProfesion FROM Empleado" UpdateCommand="UPDATE [Empleado] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Direccion] = @Direccion, [Telefono] = @Telefono, [Email] = @Email, [IdProfesion] = @IdProfesion WHERE [IdEmpleado] = @IdEmpleado">
            <DeleteParameters>
                <asp:Parameter Name="IdEmpleado" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Documento" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Telefono" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="IdProfesion" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Documento" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Telefono" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="IdProfesion" Type="Int32" />
                <asp:Parameter Name="IdEmpleado" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>

