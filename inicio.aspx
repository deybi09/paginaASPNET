<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="inicio.aspx.vb" Inherits="entregable.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Mi Pagina en ASP.NET</title>
   <center> <h1>Conversiones</h1></center>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style3 {
            width: 153px;
        }
        .auto-style5 {
            width: 229px;
            height: 80px;
        }
        .auto-style10 {
            width: 92%;
        }
        .auto-style17 {
            height: 55px;
        }
        .auto-style18 {
            width: 253px;
        }
        .auto-style19 {
            height: 23px;
            width: 254px;
        }
        .auto-style20 {
            width: 254px;
        }
        .auto-style21 {
            width: 251px;
        }
        .auto-style23 {
            margin-left: 130px;
        }
        .auto-style27 {
            height: 23px;
            width: 229px;
        }
        body{
            background: #444;
            color: #fff;
        }
        h1{
            background:#f2d211;
            height: 50px;
            width: 1000px;
            color: black;
        }
        #contenedor
        {
            width: 960px;
            margin:auto;
            margin-top: 20px;
            margin-bottom:20px;
        }
        tr{
            background: #444;
            color: #fff;
        }
 tb{
            background: #444;
            color: #fff;
        }
        .auto-style28 {
            width: 225px;
        }
        .auto-style29 {
            height: 23px;
            width: 225px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id ="contenedor">
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style3" rowspan="4"></td>
                            <td class="auto-style27">
                              <center> <h3> <asp:Label ID="Label1" runat="server" Text="Ingrese la temperatura"></asp:Label></h3> </center>
                            </td>
                            <td class="auto-style29">
                                <asp:TextBox ID="temmperatura" runat="server" Width="216px"></asp:TextBox>
                            </td>
                            <td rowspan="2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17" colspan="3">
                               <h3><asp:Label ID="Label2" runat="server" Text="Seleccione en que sistema metrico esta la temperatura"></asp:Label></h3> 
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="auto-style28">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="51px" Width="113px">
                                    <asp:ListItem>Ninguno</asp:ListItem>
                                    <asp:ListItem>Celsius</asp:ListItem>
                                    <asp:ListItem>Farenheit</asp:ListItem>
                                    <asp:ListItem>Kelvin</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style5">
                                &nbsp;</td>
                        
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:MultiView ID="Convertir" runat="server"  >
                                    <asp:View ID="Celsius" runat="server">
                                        <table style="width:100%;">
                                            <tr>
                                                <td class="auto-style18">
                                                    <asp:Label ID="Label3" runat="server" Text="Farenheit"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="f1" runat="server" CssClass="auto-style23" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style18">
                                                    <asp:Label ID="Label4" runat="server" Text="Kelvin "></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="k1" runat="server" CssClass="auto-style23" Width="201px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="Farenheit" runat="server">
                                        <table style="width:100%;">
                                            <tr>
                                                <td class="auto-style19">
                                                    <asp:Label ID="Label5" runat="server" Text="Celsius"></asp:Label>
                                                </td>
                                                <td class="auto-style1">
                                                    <asp:TextBox ID="c2" runat="server" CssClass="auto-style23" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style20">
                                                    <asp:Label ID="Label6" runat="server" Text="Kelvin "></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="k2" runat="server" CssClass="auto-style23" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="Kelvin" runat="server">
                                        <table style="width:100%;">
                                            <tr>
                                                <td class="auto-style21">
                                                    <asp:Label ID="Label7" runat="server" Text="Celsius"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="c3" runat="server" CssClass="auto-style23" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style21">
                                                    <asp:Label ID="Label8" runat="server" Text="Farenheit"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="f3" runat="server" CssClass="auto-style23" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </asp:MultiView>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
               
        </div>
    </form>
    
        <hr />
        <footer>
            <p>&copy; @DateTime.Now.Year - pagina de conversiones ASP.NET</p>
        </footer>
</body>
</html>