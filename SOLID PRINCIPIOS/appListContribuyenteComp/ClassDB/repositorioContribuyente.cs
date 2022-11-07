using Microsoft.Data.SqlClient;
using System;
using System.Data;

namespace ClassDB
{
    public class repositorioContribuyente
    {
        public SqlConnection connection;
        public repositorioContribuyente(SqlConnection sqlConnetion)
        {
            this.connection = sqlConnetion;
        }
        public DataTable GetAll()
        {
            try
            {
                SqlDataAdapter query = new SqlDataAdapter("SELECT [rncCedula],[nombre],[tipo],[estatus] FROM [contribuyenteComprobante].[Contribuyentes].[contribuyente]", connection);
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
