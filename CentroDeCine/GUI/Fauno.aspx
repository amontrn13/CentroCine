<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fauno.aspx.cs" Inherits="GUI_Fauno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Centro de Cine Costa Rica</title>
    <script src="~/javascript/Home.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="~/CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="PanelNavigator" runat="server" Height="319px" HorizontalAlign="Center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/IMG/centro.jpg" OnDataBinding="DropDownListMenu_SelectedIndexChanged" />
            <div class ="containerLogo">
                <asp:Label ID="LblTitlePage" runat="server" Text="FAUNO" ForeColor="White" Font-Names="Bebas Neue" Font-Size="70pt"></asp:Label>
            </div>
            <div class="containerButtons">
                <asp:ImageButton ID="BttnImageYT" runat="server" ImageUrl ="~/IMG/yt.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageYT_Click" />
                <asp:ImageButton ID="BttnImageFB" runat="server" ImageUrl ="~/IMG/face.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageFB_Click" />
                <asp:ImageButton ID="BttnImageIG" runat="server" ImageUrl ="~/IMG/instagram.png" Width="45" Height="40" OnClientClick = "target='blank'" OnClick="BttnImageIG_Click"/>
                <asp:ImageButton ID="BttnImageTwitter" runat="server" ImageUrl ="~/IMG/twitter.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageTwitter_Click"/>
            </div>
            <div class="container">
                <asp:DropDownList ID="DropDownListMenu" runat="server" BackColor="#47493C" Font-Names="Bebas Neue" Font-Size="20pt" ForeColor="White" AutoPostBack="True" OnSelectedIndexChanged="DropDownListMenu_SelectedIndexChanged">
                    <asp:ListItem>Menú</asp:ListItem>
                    <asp:ListItem>Preámbulo</asp:ListItem>
                    <asp:ListItem>Fauno</asp:ListItem>
                    <asp:ListItem>CRFIC</asp:ListItem>
                    <asp:ListItem>Calendario</asp:ListItem>
                    <asp:ListItem>About Us</asp:ListItem>
                </asp:DropDownList>
            </div>
        </asp:Panel>
        <asp:Panel ID="NewInfo" runat="server" Height="319px" HorizontalAlign="Center">
           
            <div style="text-align:center; margin-left:19%; width:800px; ">
                 <asp:Image ID="ImgNew" runat="server" width= "800px" ImageUrl="~/IMG/faunoinfo.jpeg"/>
                <br />
            <br />
           El Fauno es un fondo concursable para el financiamiento de proyectos de creadores audiovisuales y/o cinematográficos nacionales, con un monto de ¢250 millones, proveniente del presupuesto institucional del Centro de Cine.

El nombre de El Fauno aspira a reconocer el espíritu emprendedor de los creadores audiovisuales de nuestro país y de otras latitudes, en las que plasmar los sueños en la pantalla implica, en no pocas ocasiones, verdaderos sacrificios, hasta poner en riesgo el patrimonio personal o la propia existencia, como sucedió con Alberto de Goyen, un costarricense que tardó varios años en la concepción y filmación de su proyecto cinematográfico, “El atardecer de un fauno”, sin que lograra ver en pantalla su realización, pues perdió la vida, víctima de una enfermedad.

En ese contexto, la puesta en marcha del Fondo para el Fomento Audiovisual y Cinematográfica-El Fauno busca el fortalecimiento de las industrias culturales del país, incorporando a la pequeña y mediana empresa cinematográfica y audiovisual en el sector formal productivo, con el afán de concretar la oferta exportadora del país en el área de la cinematografía.
            <br />
            <br />
            <br />
            <br />  
            </div>
                  
        </asp:Panel>
    </form>
</body>
</html>
