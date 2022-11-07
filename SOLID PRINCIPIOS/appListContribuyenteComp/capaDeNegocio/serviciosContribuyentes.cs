using ClassDB;
using Microsoft.Data.SqlClient;
using System;
using System.Data;
using System.Configuration;
using Microsoft.IdentityModel.Protocols;


namespace capaDeNegocio
{
    public class serviciosContribuyentes:IServiciosContribuyentes
    {

        public SqlConnection Connection;

        public repositorioContribuyente repositorio;
        public serviciosContribuyentes()
        {
            try
            {
                this.Connection = new SqlConnection("Data Source = SISTEMAS; Initial Catalog = contribuyenteComprobante; Integrated security = True;");
                repositorio = new repositorioContribuyente(Connection);
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
