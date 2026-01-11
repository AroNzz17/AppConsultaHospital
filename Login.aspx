<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyHospitalGUI.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Content/Styles.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>

</head>
<body>
    <form id="form1" runat="server">
    <div class="login-wrapper">
        <div class="login-container">
            <h2>Bienvenido</h2>

            <div class="login-form">
                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False" />
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Usuario" CssClass="visually-hidden"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input" Placeholder="Usuario" TextMode="SingleLine" required="required"></asp:TextBox>

                <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" Text="Contraseña" CssClass="sr-only"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input" Placeholder="Password" TextMode="Password" required="required"></asp:TextBox>

                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn1" OnClick="btnLogin_Click" />

                <p class="signup-link">¿No tienes una cuenta? <a href="#">Regístrate</a></p>
            </div>
        </div>
    </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaY5n3zV9zzTtmI3UksdQRVvoxMfooAoD" crossorigin="anonymous"></script>
</body>
</html>