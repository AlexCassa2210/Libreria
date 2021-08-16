using Libreria.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Libreria.Servicios
{
    public class ServBuscar
    {

        public static List<Libro> BuscarLibrosDisp(string nombre)
        {
            List<Libro> librosDisp = new List<Libro>();
            librosDisp = BaseDatos.executespBuscar(nombre);

            return librosDisp;
        }


    }
}