using Libreria.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria.Servicios
{
    public class ServCarrito
    {
        public static List<Libro> VerCarrito(string correo)
        {
            List<Libro> librosEncontrados = new List<Libro>();
            librosEncontrados = BaseDatos.executeVerCarrito(correo);

            return librosEncontrados;
        }
    }
}