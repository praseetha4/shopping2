<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="shopping2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <style type="text/css">
    .auto-style1 {
        margin-left: 80px;
        width: 625px;
    }
    .auto-style2 {
        height: 32px;
    }
    .auto-style3 {
        height: 52px;
    }
    .auto-style4 {
        width: 493px;
    }
    .auto-style5 {
        height: 32px;
        width: 493px;
    }
    .auto-style6 {
        height: 52px;
        width: 493px;
    }
    .auto-style7 {
        width: 493px;
        height: 42px;
    }
    .auto-style8 {
        height: 42px;
    }
    .auto-style9 {
        height: 32px;
        width: 625px;
    }
    .auto-style10 {
        width: 625px;
    }
    .auto-style11 {
        height: 52px;
        width: 625px;
    }
    .auto-style12 {
        height: 42px;
        width: 625px;
    }
</style>--%>
    <style type="text/css">
        .auto-style1 {
            width: 845px;
        }
        .auto-style2 {
            height: 32px;
        }
        .auto-style3 {
            width: 845px;
            height: 32px;
            text-align: center;
        }
        .auto-style4 {
            height: 42px;
        }
        .auto-style5 {
            width: 845px;
            height: 42px;
            text-align: center;
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



    .auto-style6 {
        width: 122px;
    }
    .auto-style7 {
        height: 32px;
        width: 122px;
    }
    .auto-style8 {
        height: 42px;
        width: 122px;
    }
        .auto-style10 {
            width: 845px;
            text-align: center;
        }
        .auto-style11 {
            width: 845px;
            height: 32px;
        }
        .auto-style12 {
            margin-left: 0px;
        }



        .auto-style13 {
            margin-left: 0px;
            margin-right: 4px;
        }



    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="topnav" align="center">
        +<a class="active" href="WebForm1.aspx">Home</a>
  <a href="#news">Shop</a>
  <a href="#about">About Us</a>
  <a href="#contact">Contact Us</a>
   <a href="#contact">Feedback</a>
   <a href="loginpage.aspx">Signup</a>
    <a href="WebForm1.aspx">Login</a>
</div>

<div style="padding-left:16px">
    <br />
    <h2 class="text-center">&nbsp;<asp:Image ID="Image1" runat="server" CssClass="auto-style12" Height="69px" ImageUrl="~/Login-Here-Icon-300x91.png" Width="311px" />
    </h2>
  <p></p>


  
<table align="center">
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
        <td class="auto-style11"></td>
        <td class="auto-style2"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;&nbsp;
            </td>
        <td>&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
        <td class="auto-style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label11" runat="server" ForeColor="#3366FF" Text="Username" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server" ForeColor="#3333CC" Width="375px" ValidationGroup="x"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
        </td>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style10">
            <br />
&nbsp;<asp:Label ID="Label12" runat="server" ForeColor="#3366FF" Text="Password" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;
            <asp:TextBox ID="TextBox9" runat="server" ForeColor="#3333CC" CssClass="offset-sm-0" Width="375px" ValidationGroup="x"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox9" ErrorMessage="Required Field" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style5">
            <asp:Button ID="Button2" runat="server" Font-Size="Large" ForeColor="#CC0066" OnClick="Button2_Click" Text="Login" BackColor="#CC99FF" BorderColor="#CC00CC" BorderStyle="Ridge" Font-Bold="True" Font-Italic="True" Font-Names="Gill Sans Nova Light" Width="138px" ValidationGroup="x" />
            &nbsp;
            <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            <br />
            OR<br />
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style13" Height="44px" ImageUrl="~/signup.jpg" PostBackUrl="~/loginpage.aspx" ValidationGroup="y" Width="141px" />
&nbsp;<asp:Label ID="Label18" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>
           <%-- <asp:LinkButton ID="LinkButton1" runat="server" BorderColor="#CC6699" BorderStyle="Ridge" Font-Bold="True" Font-Size="Larger" PostBackUrl="~/loginpage.aspx">Sign-up HERE </asp:LinkButton>--%>
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
</table>
    </div>
</asp:Content>
