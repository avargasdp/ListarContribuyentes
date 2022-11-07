using Microsoft.Data.SqlClient;
using System;

namespace conex_db_Contribuyente
{

        public class conexContribuyentes 
    { 
        public static string cntrString  = "Data Source=SISTEMAS;Initial Catalog=contribuyenteComprobante;Integrated security=True;";

        public static SqlConnection Conectar()
        {
            return new SqlConnection(cntrString);
        }
        public void registrarLogError( string Descripcion)
    {
        using (var con = Conectar())
        {
            con.Open();
            string Qry = "INSERT INTO[logs].[logsErrorContribuyentes]([Descripcion],[update_at])VALUES('"+ Descripcion + "', "+DateTime.Now+")";
            SqlCommand cmd = new SqlCommand(Qry, con);

            cmd.ExecuteNonQuery();
        }
    }

    }
}
