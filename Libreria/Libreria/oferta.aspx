<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="oferta.aspx.cs" Inherits="Libreria.oferta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://fonts.googleapis.com/css2?family=Lexend+Zetta&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <script src="js/Main.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <link href="Css/Styles.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div class="barra">
            <div class="clearfix contenedor-nav">
                <div class="logo navegacion-principal">
                    
                  <a href="index.aspx" class="first"> 
                    <img src="../Imagenes/Fondo/Liberia.png"alt="..."></a>
                </div>


                <nav class="navegacion-principal clearfix">
                    <a href="buscar.aspx">Buscar</a>
                  <a href="biblioteca.aspx">Libros</a>
                  <a href="oferta.aspx">oferta</a>
                  <a href="carrito.aspx">Carrito</a>
                  <a href="perfil.aspx">Perfil</a>
                  <a href="contacto.aspx">Contáctenos</a>
                </nav>

            </div> <!-- Contenedor -->
        </div> <!-- Barras -->

        <div>
            <h2 class="tittle">LIBROS EN OFERTA</h2>
            <div class="contenedor">
                <div class="row contenedor-grid">
                    <asp:Repeater ID="repOferta" runat="server">
                        <ItemTemplate>
                            <div class="card" style="width: 17rem;">
                                <img src="<%# Eval("Foto")%>" class="card-img-top imagen" alt="...">
                                    <div class="card-body">
                                        <%--<h5 class="card-title">Ti<%# Eval("Titulo")%></h5>--%>
                                        <p class="card-text"><%# Eval("Autor")%></p>
                                        <a href="biblioteca.aspx" class="boton btn" >Buscar en Biblioteca</a>
                                        <a href="#"   id="favorito"><i class="fa fa-bookmark fa-fw"></i></a>
                                    </div>
                            </div> <!-- div card -->
                        </ItemTemplate>
                    </asp:Repeater>
                </div><!-- div row -->

                <%--<a href="biblioteca.aspx" class="boton btn" >Ver Todos</a>--%>

            </div><!-- div container -->
        </div>

                <footer class="site-footer">
            <div class="contenedor clearfix">
                <div class="footer-informacion">
                    <h3>Sobre <span>Libreria Internacional</span></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac diam a sapien pellentesque laoreet. Integer tincidunt nibh vitae neque mollis tincidunt.
                        Aenean et auctor arcu, a fringilla lorem. Integer nunc neque, posuere id urna non, congue ultrices lectus. Duis bibendum pellentesque arcu, id posuere 
                        nulla laoreet non. Donec dictum ornare dui id tempor. Nunc eleifend blandit velit vitae tincidunt. Maecenas fringilla ac nisl euismod tempus.Aenean et 
                        auctor arcu, a fringilla lorem. Integer nunc neque, posuere id urna non, congue ultrices lectus. Duis bibendum pellentesque arcu, id posuere nulla laoreet non.
                    </p>
                </div>

                <div class="ultimos-noticias">
                    <h3>Últimas <span>noticias</span></h3>
                    <ul>
                        <li>Donec elementum nibh ac urna feugiat, sed rhoncus dolor consectetur. Cras id dapibus leo.</li>
                        <li>Donec elementum nibh ac urna feugiat, sed rhoncus dolor consectetur. Cras id dapibus leo.</li>
                        <li>Donec elementum nibh ac urna feugiat, sed rhoncus dolor consectetur. Cras id dapibus leo.</li>
                    </ul>
                </div>
                <div class="menu">
                    <h3>Redes <span>sociales</span></h3>
                        <nav class="redes-sociales">
                            <a href="#"><i class="fa fa-facebook fa-fw"></i></a>
                            <a href="#"><i class="fa fa-twitter fa-fw"></i></a>
                            <a href="#"><i class="fa fa-pinterest fa-fw"></i></a>
                            <a href="#"><i class="fa fa-youtube fa-fw"></i></a>
                            <a href="#"><i class="fa fa-instagram fa-fw"></i></a>
                    </nav>
                </div>
            </div>
            <p class="copyright">
                Todos los derechos Reservador LIBRERIA INTERNACIONAL 2020.
            </p>
        </footer>
    </form>
</body>
</html>
