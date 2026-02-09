<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="BookApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            
            <table border="1">
                <tr style="background-color: blue;">
                    <td> Book Name :</td>
                    <td><asp:TextBox ID="txtbname" runat="server"></asp:TextBox></td>
                 </tr>
    <tr style="background-color:aquamarine">
     <td> Book Price :</td>
     <td><asp:TextBox ID="txtbprice" runat="server"></asp:TextBox></td>
  </tr>
     <<tr style="background-color:bisque">
     <td> author Name :</td>
     <td><asp:TextBox ID="txtauthor" runat="server"></asp:TextBox></td>
  </tr>
       <<tr style="background-color:lemonchiffon">
   <td></td>
   <td><asp:Button ID="btsave" Style="background-color:greenyellow" runat="server" Text="Submit" OnClick="btsave_Click" />
   </td>
</tr>
    <tr style="background-color:palegreen">
        <td></td>
        <td><asp:GridView ID="grd" runat="server"></asp:GridView></td>
    </tr>
            </table>
                </center>
        </div>
    </form>
</body>
</html>
