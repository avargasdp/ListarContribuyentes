using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class listContribuyentes : System.Web.UI.Page
    {


        public string rncCedula;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
              
                ControlVistas("");

            }
            catch (Exception w)
            {
                /*log para los error al momento de ejecutar la aplicacion*/
                //registrarLogError(w.ToString());
            }
        }
        #region ControlDeVistas
        public void ControlVistas(string vista){
            

            switch (vista)
            {
                case "ListComprobantes":formlistComprobantesContribuyentes.Visible = true; cargarComprobantesContribuyentes(); formlistContribuyentes.Visible = false;
                    break;
                default: cargarContribuyentes();
                    break;
            }
        }
        #endregion
        #region ObtenerDatosDelWebApi
        public void cargarContribuyentes()
        {
            try
            {
                /*Hago uso del servicio BDSOAPCLIENT*/
                ServicioWeb.BDSoapClient ws = new ServicioWeb.BDSoapClient();

                /*Preparo los datos en formato xlm para ser mostrados en la tabla*/
                DataSet ds = ws.getContribuyentes();

                grvMostrarContribuyentes.DataSource = ds.Tables[0];
                grvMostrarContribuyentes.DataBind();
            }
            catch (Exception e)
            {
                /*log para los error al momento de ejecutar la aplicacion*/
                //registrarLogError(e.ToString());
            }
           

        }
        public void cargarComprobantesContribuyentes()
        {
            try
            {
                /*Hago uso del servicio BDSOAPCLIENT*/
                ServicioWeb.BDSoapClient ws = new ServicioWeb.BDSoapClient();

                /*Preparo los datos para ser mostrados en la tabla*/
                DataSet ds = ws.getComprobantes();
                DataTable dtlisComprobantes = ds.Tables[0];
                /*Para obtener los comprobantes de la persona seleccionada utilizo linq*/
                EnumerableRowCollection<DataRow> query = from order in dtlisComprobantes.AsEnumerable()
                                                         where order.Field<string>("Cedula").Contains(rncCedula)
                                                         select order;

                /*Antes de mostrar los datos lo transformo en un DataView*/
                DataView _listContribuyente = query.AsDataView();
                /*Cargo la informacion al dataGridView*/
                grvMostrarComprobantes.DataSource = _listContribuyente;
                grvMostrarComprobantes.DataBind();



                /*Guardo la cantidad de itbis*/
                var TotalItbis = query.Sum(a => a.Field<decimal>("Itbis"));
                lbltotalItbis.Text =TotalItbis.ToString();
            }
            catch (Exception w)
            {

                //registrarLogError(w.ToString());
            }
           
        }
        #endregion
        #region Metodos privados 
        protected void grvPreRender(object sender, EventArgs e)
        {
            if (grvMostrarComprobantes.Rows.Count > 0)
            {
                grvMostrarComprobantes.UseAccessibleHeader = true;
                grvMostrarComprobantes.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            if (grvMostrarContribuyentes.Rows.Count > 0)
            {
                grvMostrarContribuyentes.UseAccessibleHeader = true;
                grvMostrarContribuyentes.HeaderRow.TableSection = TableRowSection.TableHeader;
            }


        }
        protected void dataTable_RowEditing(object sender, GridViewEditEventArgs e)
        {
         int  i = e.NewEditIndex;
           
           rncCedula = grvMostrarContribuyentes.Rows[i].Cells[1].Text;
            ControlVistas("ListComprobantes");

        }
        protected void btnRegresar(object sender, EventArgs e)
        {
            Response.Redirect("listContribuyentes.aspx");
        }
        #endregion

        //#region RegistrarLogsError
        //public static string cntrString = "Data Source=SISTEMAS;Initial Catalog=contribuyenteComprobante;Integrated security=True;";

        //public static SqlConnection Conectar()
        //{
        //    return new SqlConnection(cntrString);
        //}
        //public void registrarLogError(string Descripcion)
        //{
        //    using (var con = Conectar())
        //    {
        //        con.Open();
        //        string Qry = "INSERT INTO[logs].[logsErrorContribuyentes]([Descripcion],[update_at])VALUES('" + Descripcion + "', " + DateTime.Now + ")";
        //        SqlCommand cmd = new SqlCommand(Qry, con);

        //        cmd.ExecuteNonQuery();
        //    }
        //}
        //#endregion
    }
}