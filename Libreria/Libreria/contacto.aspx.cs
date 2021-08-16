using Libreria.Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria
{
    public partial class contacto1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Session["activo"] = "0";
            }
        }
        protected void btnContactar_Click(object sender, EventArgs e)
        {

            BaseDatos.executespContactar(txtNombreContact.Text, txtEmailContact.Text, txtMensajeContact.Text);

        }
    }
}