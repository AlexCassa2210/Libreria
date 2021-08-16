using Libreria.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria.Servicios
{
    public class ServOferta
    {
        public static List<Libro> VerLibrosOfert()
        {
            List<Libro> librosOfert = BaseDatos.executeVerOfertas();
            return librosOfert;
        }
    }
}