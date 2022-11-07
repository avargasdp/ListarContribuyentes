using Microsoft.Data.SqlClient;
using System;
using System.Data;

namespace ClassDB
{
   public class repositorioComprobante
    {

        public SqlConnection connection;
        public repositorioComprobante(SqlConnection sqlConnetion)
        {
            this.connection = sqlConnetion;
        }


        public DataTable GetAll()
        {
            try
            {
                SqlDataAdapter query = new SqlDataAdapter("SELECT [fk_rncCedula],[eNCF],[monto],[itbis18],[act] FROM [contribuyenteComprobante].[Comprobantes].[comprobantesFiscales]", connection);
                return LoadData(query);
            }
            catch (Exception)
            {
                return null;
            }
        }


        private DataTable LoadData(SqlDataAdapter query)
        {
            try
            {
                DataTable data = new DataTable();
                connection.Open();
                query.Fill(data);
                connection.Close();
                return data;
            }
            catch (Exception)
            {
                return null;
            }

        }


    }
}
