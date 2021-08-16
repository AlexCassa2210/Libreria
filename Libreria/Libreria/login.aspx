<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Libreria.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Css/styleLogin.css" rel="stylesheet" />
    <script src="js/jsLogin.js"></script>
        <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <title>Document</title>
</head>
<body>
    <form id="form1" runat="server">
    <section class="programa"> 
        <div class="contenedor-img">
        </div>

        <div class="contenido-programa">
            <div class="programa-evento">
                <nav class="menu-programa">
                    <a href="#login">Iniciar Sesión</a>
                    <a href="#register">Registrarse</a>
                </nav>
                <div id="login" class="info-curso ocultar clearfix">
                    <div class="detalle-evento login">
				        <asp:TextBox ID="txtemaillogin" type="email" placeholder="E-mail" name="email" runat="server"></asp:TextBox>
				        <asp:TextBox ID="txtpasslogin" type="password" placeholder="Contraseña" name="password"  runat="server"></asp:TextBox>
				        <asp:Button class="Boton" id="btnLogin" runat="server" Text="Iniciar Sesión" type="button" OnClick="btnLoguear_Click" value="Iniciar_Sesión"/>
                            <asp:Label  runat="server" ID="lblmensaje" Visible="false" class="danger" style="color:#ff0000;"/>
                            
                    </div>
                </div><%--login--%>

                <div id="register" class="ocultar clearfix reg">
                    <div class="detalle-evento login">
<%--                    <input type="email" placeholder="E-mail" name="email" ID="txtcorreo" runat="server" ><br>
				        <input type="text" placeholder="Nombre" name="user" ID="" runat="server"><br>
				        <input type="password" placeholder="Contraseña" name="password" ID="" runat="server"><br>--%>

                        <asp:TextBox ID="txtcorreo" type="email" placeholder="E-mail" name="email" runat="server"></asp:TextBox>
                        <asp:TextBox ID="txtnombre" type="text" placeholder="Nombre" name="user" runat="server"></asp:TextBox>
                        <asp:TextBox ID="txtpass" type="password" placeholder="Contraseña" name="password"  runat="server"></asp:TextBox>
                        <asp:Button class="Boton" ID="btnRegistrar" runat="server" Text="Registrarse" type="button" OnClick="btnRegistrar_Click"/>
                            <asp:Label  runat="server" ID="Lblregister" Visible="false" style="color:#00ff21;"/>
                    </div>
                </div> <%--register--%>

            </div><%--programa-evento--%>
        </div><%--contenido-programa--%>
    </section> 

            </form>
</body>
</html>