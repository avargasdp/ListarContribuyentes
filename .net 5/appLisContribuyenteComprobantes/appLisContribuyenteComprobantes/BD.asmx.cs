using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

namespace appLisContribuyenteComprobantes
{
    /// <summary>
    /// Summary description for BD
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class BD : System.Web.Services.WebService
    {

        
        [WebMethod]
        public DataSet getContribuyentes()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = "Data Source=SISTEMAS;Initial Catalog=contribuyenteComprobante;Integrated security=True;";
            SqlDataAdapter query = new SqlDataAdapter("SELECT [rncCedula] as Cedula,[nombre] as Nombre,[tipo] as Tipo FROM [contribuyenteComprobante].[Contribuyentes].[contribuyente]", connection);
            DataSet ds = new DataSet();
            query.Fill(ds);
            return ds;
        }
        [WebMethod]
        public DataSet getComprobantes()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = "Data Source=SISTEMAS;Initial Catalog=contribuyenteComprobante;Integrated security=True;";
            SqlDataAdapter query = new SqlDataAdapter("SELECT [fk_rncCedula] as Cedula,[eNCF] as 'Numero comprobante fiscal',[monto] as Monto,[itbis18] as Itbis FROM [contribuyenteComprobante].[Comprobantes].[comprobantesFiscales]", connection);
            DataSet ds = new DataSet();
            query.Fill(ds);
            return ds;
        }


    }
}
