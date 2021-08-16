<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrito.aspx.cs" Inherits="Libreria.carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
    <link href="https://fonts.googleapis.com/css2?family=Lexend+Zetta&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
        <script src="js/jquery.lettering.js"></script>
    <script src="js/lettering.js"></script>

    <link href="Css/styleCarrito.css" rel="stylesheet" />
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
                  <a href="oferta.aspx">Ofertas</a>
                  <a href="carrito.aspx">Carrito</a>
                  <a href="perfil.aspx">Perfil</a>
                  <a href="contacto.aspx">Contáctenos</a>
                </nav>

            </div> <!-- Contenedor -->
        </div> <!-- Barras -->

    <!--CONTENIDO PRINCIPAL-->

            <div id="message"></div>
            <div class="container mt-3">
                <div class="row">
                    <asp:Repeater ID="repCarrito" runat="server">
                        <ItemTemplate>
                            <div class="card" style="width: 18rem; margin-right: 10px; margin-bottom:60px;">
                                <img src="<%# Eval("Foto")%>" class="card-img-top" alt="..." style="margin-left:70px;height: 50%; width:50%; margin-top:10px;">
                                <div class="card-body ">
                                    <h5 class="border card-title " style="padding:10px; text-align:center;"><%# Eval("Titulo") %></h5>
                                    <p class=" border card-text " style="padding:10px;text-align:center;"><%# Eval("Autor") %></p>
                                    <p class="precio border card-text  " ID="lblprecio" style="padding:10px;text-align:center;"><strong>$<%#MetodoCorreo( Eval("Precio") )%><%#Eval("Precio")%></strong></p>
                                    <div>
                                        <p  <%#MetodoId( Eval("IdLibro") )%>></p>
                                    <asp:Button runat="server" ID="btnBorrar" class="btn btn-dark" style="margin-bottom:20px; margin-left:90px;" Text="Eliminar"  />
                                        <asp:Label class="modificar" id="lblBorrar" Visible="false" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:Panel ID="Panel2" runat="server">
                        <div class="card" style="width: 18rem;     /*display:unset;*/">
                            <div class="card-header bg-dark text-white">
                                Detalle de la compra
                            </div>
                            <div class="card-body">
                                <div class="row">
   <div class="col-6"><i class="fa fa-book fa-fw"></i>Cantidad de Libros: </div>
                                    <div class="col-6""><strong><asp:Label ID="lblCantLibros" runat="server"></asp:Label></strong></div>

                                    <div class="w-100"></div>
       <div class="col-6"><i class="fa fa-money fa-fw"></i>Costo total: </div>
                                    <div class="col-6""><strong>$<asp:Label ID="lblCostoLibros" runat="server"></asp:Label></strong></div>
                                </div>
                            </div>
                            <div class="p-2">
                                <asp:Button ID="btnPagar" style="float: right" class="btn btn-dark" runat="server" Text="Pagar" onCLick="btnPagar_Click" />
                                <asp:Label class="modificar" id="lblCompra" Visible="false" runat="server" />

                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>


    <%--FIN CONTENIDO PRINCIPAL--%>



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
