<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="productlist.aspx.cs" Inherits="shopping2.productlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        .auto-style1 {
            width: 102px;
        }
        .auto-style2 {
            width: 166px;
        }

        
   

        .auto-style3 {
            width: 166px;
            height: 169px;
        }
        .auto-style4 {
            width: 102px;
            height: 169px;
        }
        .auto-style5 {
            width: 166px;
            height: 32px;
        }
        .auto-style6 {
            width: 102px;
            height: 32px;
        }

        
   

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><br /></div>

    <div class="topnav">
  <a  href="WebForm1.aspx">Home</a>
  <a class="active" href="userprofile.aspx">My Dashboard</a>
  <a href="#news">Shop</a>
  <a href="#contact">Edit</a>
  <a href="#about">My Cart</a>
  <a href="#order">My Orders</a>
  <a href="#wishlist">My WIshlist</a>
  
</div>
    <div><p>&nbsp;</p>
        <table class="w-100">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style3">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="167px" ImageUrl='<%# Eval("prodimage") %>' Width="198px" CommandArgument='<%# Eval("proid") %>' OnCommand="ImageButton1_Command" />
                                    </td>
                                    <td class="auto-style4"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("prodname") %>' Font-Bold="True" Font-Size="Larger" ForeColor="#FF5050"></asp:Label>
                                    </td>
                                    <td class="auto-style1">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" Text="Rs."></asp:Label>
                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("prodprice") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style1">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("proddescription") %>' Font-Italic="True" Font-Size="Small"></asp:Label>
                                    </td>
                                    <td class="auto-style1">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label4" runat="server" Font-Italic="True" ForeColor="Lime" Text='<%# Eval("prodstock") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style6"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label5" runat="server" ForeColor="#FF3300"  Text='<%# Eval("status") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style1">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">&nbsp;</td>
                                    <td class="auto-style1">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">&nbsp;</td>
                                    <td class="auto-style1">&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
