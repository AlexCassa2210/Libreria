using Libreria.Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria
{
    public partial class perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["activo"] = "0";
            }



        }

        
        protected void btnPerfil_Click(object sender, EventArgs e)
        {
            string correo = Session["Email"].ToString();
            string pais = txtPais.Text;
            string provincia = txtProvincia.Text;
            string direccion = txtDireccion.Text;
            int codigoPostal = Convert.ToInt32(txtCodPost.Text);
            int tarjeta = Convert.ToInt32(txtTarjeta.Text);
            string fecha = txtFechaExp.Text;
            int codigoSeguridad = Convert.ToInt32(txtCodSeg.Text);

            BaseDatos.executespPerfil(correo, pais, provincia, direccion, codigoPostal, tarjeta, fecha, codigoSeguridad);

            lblPerfil.Visible = true;
            lblPerfil.Text = "Datos Modificados";

            txtPais.Text = "";
            txtProvincia.Text = "";
            txtDireccion.Text = "";
            txtCodPost.Text = "";
            txtTarjeta.Text = "";
            txtFechaExp.Text = "";
            txtCodSeg.Text = "";

        }
    }
}