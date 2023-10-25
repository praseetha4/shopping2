<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="shopping2.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        border: 4px solid #660033;
    }
</style>
    <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
        .auto-style2 {
            height: 32px;
        }

        
   

        .auto-style3 {
            width: 8px;
        }

        
   

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><br /></div>

    <div class="topnav">
  <a class="active" href="WebForm1.aspx">Home</a>
  <a href="#news">Shop</a>
  <a href="#contact">Edit</a>
 <%-- <a href="Mycartpage.aspx">My Cart</a>--%>
  <a href="#order">My Orders</a>
  <a href="#wishlist">My Wishlist</a>
   <a href="WebForm1.aspx">Logout</a>
  
</div>

<div style="padding-left:16px">
    <br /><br />
  <h2>
      <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Maroon" Text="Latest Arrivals"></asp:Label>
    </h2>
  <p>
      <asp:Label ID="Label5" runat="server" ForeColor="#0099FF" Text="Order Your Favourite Now"></asp:Label>
    </p>
</div>
    <table align="center" class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                <ItemTemplate>
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="280px" ImageUrl='<%# Eval("catimage") %>' Width="325px" CommandArgument='<%# Eval("catid") %>' OnCommand="ImageButton1_Command" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="True" Text='<%# Eval("catname") %>' BorderColor="#999999"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td class="auto-style2">
                                <asp:Label ID="Label3" runat="server" ForeColor="#CC0066" Text='<%# Eval("catdescription") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
