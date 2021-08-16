using Libreria.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria.Servicios
{
    public class ServLibro
    {
        public static List<Libro> VerLibrosDisp()
        {
            List<Libro> librosDisp = BaseDatos.executeVerLibros();
            return librosDisp;
        }

        public static List<Libro> ObtenerLibro(string Id)
        {
            List<Libro> librosEncontrados = new List<Libro>();
            librosEncontrados = BaseDatos.executeUnLibro(Id);

            return librosEncontrados;
        }
    }
}