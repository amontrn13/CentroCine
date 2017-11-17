<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUS.aspx.cs" Inherits="GUI_AboutUS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="554px">
                <asp:Image ID="Image1" runat="server" Height="529px" Width="338px" />
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" Height="530px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="407px">Somos el Centro Costarricense de Producción Cinematográfica, una institución adscrita al Ministerio de Cultura y Juventud, que se encarga de promover la actividad audiovisual en nuestro país. Es la entidad técnica y especializada del Estado en el campo del cine y el video nacionales, creada mediante la ley 6158, de noviembre de 1977. La institución organiza su quehacer en tres líneas programáticas Fomento, Formación y Preservación. Igualmente nuestro compromiso con el sector audiovisual nos obliga a la creación de nuevas audiencias desde la formación de públicos de todas la edades y en todas las regiones del país hasta la organización de proyecciones continuas, muestras y festivales especiales para la exposición de cine nacional e internacional de alta factura. </asp:TextBox>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
