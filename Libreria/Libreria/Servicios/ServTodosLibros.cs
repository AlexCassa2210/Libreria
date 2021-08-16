using Libreria.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria.Servicios
{
    public class ServTodosLibros
    {

        public static List<Libro> verTodosLibros()
        {
            List<Libro> todosLibros = BaseDatos.executeTodosLibros();
            return todosLibros;

        }

    }
}