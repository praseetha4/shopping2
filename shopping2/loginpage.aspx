<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="shopping2.loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="topnav">
  <a  href="WebForm1.aspx">Home</a>
   <a class="active" href="loginpage.aspx">Signup</a>
  <a href="#news">Shop</a>
  <a href="#contact">Contact Us</a>
  <a href="#about">About Us</a>
</div>

<div style="padding-left:16px">
    <br />
    <br />
  <h2 align="center">
      <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/signup.jpg" Width="311px" />
    </h2>
  
</div>

    <table class="w-100" align="center">
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style1">
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0066" Text="BECOME A MEMBER"></asp:Label>
            <br />
        </td>
        <td>
            <br />
            <br />
            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0066" Text="ADMIN REGISTER HERE "></asp:Label>
            </td>
        <%--<td class="auto-style4">&nbsp;</td>--%>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" ForeColor="#0066FF" Text="First Name"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox1" runat="server" Font-Italic="True" ForeColor="#FF66FF"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="#FF3300" ValidationGroup="x"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label19" runat="server" ForeColor="#0066FF" Text="Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td>
            <asp:TextBox ID="TextBox13" runat="server" Font-Italic="True" ForeColor="#FF66FF"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox13" ErrorMessage="Required Field" ForeColor="#FF3300" ValidationGroup="y"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label3" runat="server" ForeColor="#3366FF" Text="Last name"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox2" runat="server" Font-Italic="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="#FF3300" ValidationGroup="x"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="Label20" runat="server" ForeColor="#3366FF" Text="E-mail"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox14" runat="server" Font-Italic="True" ForeColor="#FF66FF"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox14" ErrorMessage="Enter Valid Email" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="y"></asp:RegularExpressionValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="#3366FF" Text="Age"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox3" runat="server" Font-Italic="True"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Must Be Above 18" ForeColor="#FF3300" MaximumValue="70" MinimumValue="18" ValidationGroup="x"></asp:RangeValidator>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label21" runat="server" ForeColor="#3366FF" Text="Phone"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox15" runat="server" Font-Italic="True" ForeColor="#FF66FF"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox15" ErrorMessage="Not Valid" ForeColor="#FF3300" ValidationExpression="\d{10}" ValidationGroup="y"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="#3366FF" Text="Address"></asp:Label>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox4" runat="server" Font-Italic="True" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredField" ForeColor="#FF3300" ValidationGroup="x"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style3">
            <asp:Label ID="Label22" runat="server" ForeColor="#3366FF" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox16" runat="server" Font-Italic="True" ForeColor="#FF66FF" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox16" ErrorMessage="Required Field" ForeColor="#FF3300" ValidationGroup="y"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label6" runat="server" ForeColor="#3366FF" Text="Gender"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="#3366FF">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Select One" ForeColor="#FF3300" ValidationGroup="x"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="Label23" runat="server" ForeColor="#3366FF" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox17" runat="server" Font-Italic="True" ForeColor="#FF66FF"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox17" ErrorMessage="Required Field" ForeColor="Red" ValidationGroup="y"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label7" runat="server" ForeColor="#3366FF" Text="Phone"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox6" runat="server" Font-Italic="True" CssClass="mt-0"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Not Valid" ForeColor="#FF3300" ValidationExpression="\d{10}" ValidationGroup="x"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label24" runat="server" ForeColor="#3366FF" Text="Password"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox18" runat="server" Font-Italic="True" ForeColor="#FF66FF"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label8" runat="server" ForeColor="#3366FF" Text="E-mail"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox7" runat="server" Font-Italic="True"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Valid Email" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="x"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label25" runat="server" ForeColor="#3366FF" Text="Confirm Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox19" runat="server" Font-Italic="True" ForeColor="#FF66FF"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox18" ControlToValidate="TextBox19" ErrorMessage="Doesnt Match" ForeColor="Red" ValidationGroup="y"></asp:CompareValidator>
        </td>
        <td>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label13" runat="server" ForeColor="#3366FF" Text="Username"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox10" runat="server" Font-Italic="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10" ErrorMessage="Required Field" ForeColor="#FF3300" ValidationGroup="x"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label14" runat="server" ForeColor="#3366FF" Text="Password"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox11" runat="server" Font-Italic="True"></asp:TextBox>
        </td>
        <td class="auto-style2">
            </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label15" runat="server" ForeColor="#3366FF" Text="Confirm Password"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox12" runat="server" Font-Italic="True"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox11" ControlToValidate="TextBox12" ErrorMessage="Doesn't Match" ForeColor="#FF3300" ValidationGroup="x"></asp:CompareValidator>
        </td>
        <td>
            &nbsp;</td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style12">
            <asp:Button ID="Button1" runat="server" Font-Size="Large" ForeColor="#CC0066" OnClick="Button1_Click" Text="Register" ValidationGroup="x" />
        </td>
        <td class="auto-style8">
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Register" ValidationGroup="y" />
        </td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style9">
            <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#00CC00" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Or"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#00CC00" Text="Label" Visible="False"></asp:Label>
            </td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style10">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">Already a member !!! Login Here</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style10">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/accountdetails.aspx">ENTER ACCOUNT DETAILS HERE</asp:LinkButton>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style10">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
