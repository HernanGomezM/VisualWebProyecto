using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class ClQuerys
{
    
        SqlConnection cone;
        SqlDataAdapter adaSelec;
        ClConexion objConexion = new ClConexion();
	public ClQuerys()
	{
	
	}
    public DataTable Selects(string sele)
    {
        cone = objConexion.mtdConexion();
        DataTable tblSelect = new DataTable();
        adaSelec = new SqlDataAdapter(sele,cone);
        adaSelec.Fill(tblSelect);
        return tblSelect;
        //tblSelect esta en memoria pues esta en un objeto desconectado
    }
    public void Inserts(string inse)
    {
        cone = objConexion.mtdConexion();
        SqlCommand cmdInsert = new SqlCommand();
        cmdInsert.Connection = cone;
        cone.Open();
        cmdInsert.CommandText = inse;
        cmdInsert.ExecuteNonQuery();
        cone.Close();
    }
}