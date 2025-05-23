﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
      <style>
        /* Estilos adicionales para centrar el formulario */
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .login-box {
            width: 300px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            background-color: white;
        }
    </style>

    <div class="login-container">
        <div class="login-box text-center">
            <h3 class="mb-4">Ingresar a mi cuenta</h3>
                <div class="form-group" style="padding:10px">
                    <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server" placeholder="Usuario" />
                </div>
                <div class="form-group" style="padding:10px">
                    <asp:TextBox ID="txtContraseña" CssClass="form-control" TextMode="Password" runat="server" placeholder="Contraseña" />
                </div>
                 <div>
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn btn-dark btn-block font-weight-bold" style="width: 140px;padding: 10px;margin-top: 10px; margin-bottom:10px" OnClick="btnIngresar_Click"/>
                </div>

                 <asp:Label ID="lblMensaje" runat="server"  style="color: red;" ></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
