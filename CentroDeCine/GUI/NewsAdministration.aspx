<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsAdministration.aspx.cs" Inherits="GUI_NewsAdministration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">



* {box-sizing:border-box}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="width: 295px; margin-left: 400px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: 24px; font-style: italic; color: #000080;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agregar Noticia<br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAgregandoNoticia" runat="server" OnClick="btnAgregandoNoticia_Click" Text="AgregarNoticia" />
            </p>
        </div>
        <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="18pt">
                    &nbsp;Seleccione la noticia que desea editar...</asp:Panel>
                    <div style="margin-left:19.5%; text-align:center;">
            <asp:GridView  ID="grdData" runat="server" Font-Names="Bebas Neue" Font-Size="20pt" ForeColor="White"
                AutoGenerateColumns="False" CellPadding="4" PageSize="5"
                GridLines="None" Width="800" AllowPaging="True"
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <alternatingrowstyle BackColor="White" ForeColor="#261B29"></alternatingrowstyle>
                <columns>
                    <asp:BoundField DataField="Seccion" HeaderText="Sección" />
                    <asp:TemplateField HeaderText="Título">
                        <ItemTemplate>
                            <asp:Label ID="lblNew" runat="server" 
                              Text='<%# Eval("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField Text="Editar" CommandName="Select" />
               </columns>
                    
                <editrowstyle BackColor="#FFDE2F"></editrowstyle>
                <footerstyle BackColor="#261B29" Font-Bold="True" 

                ForeColor="White"></footerstyle>
                <headerstyle BackColor="#FFDE2F" Font-Bold="True" 

                ForeColor="White"></headerstyle>
                <pagerstyle BackColor="#261B29" ForeColor="White" 

                HorizontalAlign="Center"></pagerstyle>
                <rowstyle BackColor="#F7F6F3" ForeColor="#333333"></rowstyle>
                <selectedrowstyle BackColor="#E2DED6" Font-Bold="True" 

                ForeColor="#333333"></selectedrowstyle>
                <sortedascendingcellstyle BackColor="#E9E7E2"></sortedascendingcellstyle>
                <sortedascendingheaderstyle BackColor="#506C8C"></sortedascendingheaderstyle>
                <sorteddescendingcellstyle BackColor="#FFFDF8"></sorteddescendingcellstyle>
                <sorteddescendingheaderstyle BackColor="#6F8DAE"></sorteddescendingheaderstyle>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
