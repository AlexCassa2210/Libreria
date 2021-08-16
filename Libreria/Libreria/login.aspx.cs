using Libreria.Entidades;
using Libreria.Servicios;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Libreria
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["activo"] = "0";
            }
        }
        public void Registrar(string nombre, string correo, string pass)
        {

            nombre = txtnombre.Text;
            correo = txtcorreo.Text;
            pass = txtpass.Text;

            Usuario usuario = new Usuario(nombre, correo, pass);



            Session["usuario"] = usuario;
            Session["vsCorreo"] = correo;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["usuario"];

            BaseDatos.executespRegistrar(txtnombre.Text, txtcorreo.Text, txtpass.Text);

            Lblregister.Visible = true;
            Lblregister.Text = "Usuario Registrado";


        }


        protected void btnLoguear_Click(object sender, EventArgs e)
        {
            //BaseDatos.executespRegistrar(txtnombre.Text, txtpasslogin.Text);

            BaseDatos mycnn = new BaseDatos();

            string Codigo = mycnn.executespLoguear(txtemaillogin.Text, txtpasslogin.Text);



            Session["Codigo"] = Codigo;
            Session["Email"] = txtemaillogin.Text;


            if (Codigo != "")
            {
                Session["activo"] = "1";
                Response.Redirect("index.aspx", true);

            }
            else
            {
                lblmensaje.Visible = true;
                lblmensaje.Text = "Usuario  no Registrado";
            }
        }

    }
}