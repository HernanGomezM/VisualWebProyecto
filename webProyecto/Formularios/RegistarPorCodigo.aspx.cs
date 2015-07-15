using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Formularios_RegistarPorCodigo : System.Web.UI.Page
{
    ClQuerys objQuerys = new ClQuerys();
    protected void Page_Load(object sender, EventArgs e)
    {
        string select = "SELECT * FROM Profesion";
        ddlProfe.DataSource = objQuerys.Selects(select);
    }
    protected void btnRegisCod_Click(object sender, EventArgs e)
    {

        
        
        string Docu = txtDocu.Text;
        string Nom = txtDocu.Text;
        string Apell = txtDocu.Text;
        string Direc = txtDocu.Text;
        string Ema = txtDocu.Text;
        string Tele = txtDocu.Text;
        
        string insert = "INSERT INTO Empleado(Documento, Nombre, Apellido, Direccion, Telefono, Email, IdProfesion) VALUES (" + Docu + "," + Nom + ", " + Apell + ", " + Direc + ", " + Ema + ", " +Tele + ", " + ddlProfe + ")";
        objQuerys.Inserts(insert);
        
        
        string script = @"<script type='text/javascript'>
                            alerta(6);
                        </script>";

        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
       
    }
}