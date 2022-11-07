using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ControlVistas("");

            }
            catch (Exception)
            {

                throw;
            }
        }
        #region ControlDeVistas
        public void ControlVistas(string vista)
        {


            switch (vista)
            {
                case "ListComprobantes":
                    formlistComprobantesContribuyentes.Visible = true; cargarComprobantesContribuyentes(); formlistContribuyentes.Visible = false;
                    break;
                default:
                    cargarContribuyentes();
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

                /*Preparo los datos para ser mostrados en la tabla*/
                DataSet ds = ws.getContribuyentes();
                grvMostrarContribuyentes.DataSource = ds.Tables[0];
                grvMostrarContribuyentes.DataBind();
            }
            catch (Exception)
            {

                throw;
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
                grvMostrarComprobantes.DataSource = ds.Tables[0];
                grvMostrarComprobantes.DataBind();
            }
            catch (Exception)
            {

                throw;
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
            ControlVistas("ListComprobantes");



        }
        protected void btnRegresar(object sender, EventArgs e)
        {
            Response.Redirect("listContribuyentes.aspx");
        }
        #endregion
    }
}