using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Formularios_ListarPorCodigo : System.Web.UI.Page
{
    ClQuerys objEmpleado = new ClQuerys();
    protected void Page_Load(object sender, EventArgs e)
    {
     string query = ("SELECT Documento, Nombre, Apellido, Direccion, Telefono, Email FROM Empleado");
    gvDatos.DataSource = objEmpleado.Selects(query);
    gvDatos.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}