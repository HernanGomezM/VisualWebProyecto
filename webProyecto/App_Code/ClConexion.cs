using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class ClConexion
{
    SqlConnection conexion;
	public SqlConnection mtdConexion()
    {
        conexion = new SqlConnection("Data Source=ADSISENA06\\SQLEXPRESS;Initial Catalog=bdProyecto;Integrated Security=True");
        return conexion;
    }

}