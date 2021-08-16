using Libreria.Entidades;
using Libreria.Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria.Servicios
{
    public partial class Buscar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["activo"] = "0";
            }

            string nombre = txtBuscar.Text;
            List<Libro> LibrosDisp = ServBuscar.BuscarLibrosDisp(nombre);

            repBuscar.DataSource = LibrosDisp;
            repBuscar.DataBind();
        }

        protected void btnContactar_Click(object sender, EventArgs e)
        {

            BaseDatos.executespBuscar(txtBuscar.Text);

        }
    }
}