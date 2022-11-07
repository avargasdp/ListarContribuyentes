
using ClassDB;
using Microsoft.Data.SqlClient;
using System;
using System.Configuration;
using System.Data;

namespace capaDeNegocio
{
    class serviciosComprobantes: IServiciosComprobantes
    {

        public SqlConnection Connection;

        public repositorioComprobante repositorio;
        public serviciosComprobantes()
        {
            try
            {
                this.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbContrinuyente"].ConnectionString);

                repositorio = new repositorioComprobante(Connection);
            }
            catch (Exception)
            {

                throw;
            }
        
        }

        public DataTable GetAll()
        {
            return repositorio.GetAll();
        }




    }
}
