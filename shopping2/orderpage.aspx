<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="orderpage.aspx.cs" Inherits="shopping2.order_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 301px;
        }
        .auto-style2 {
            width: 301px;
            height: 32px;
        }
        .auto-style3 {
            height: 32px;
            width: 662px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            height: 2px;
            margin-right: 36px;
            width: 251px;
        }
        .auto-style6 {
            width: 245px;
            text-align: center;
        }
        .auto-style7 {
            height: 563px;
        }
        .auto-style8 {
            width: 662px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
     </p>
    <table align="center" style=" margin-top:50px; " class="auto-style5">
        <tr>
            <td class="auto-style6"><asp:Label ID="Label6" runat="server" Text="Enter Card Details" Font-Bold="True"></asp:Label></td>
        </tr>
    </table>
&nbsp;<table align="center" style=" margin-top:50px; " class="auto-style7" >
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Enter Name in Card" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="#6666FF" Height="35px" Width="341px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8">
                <b>
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style4" Height="87px" ImageUrl="~/PAY.png" Width="362px" />
                <br />
                </b>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Enter Account number"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" BorderColor="#6666FF" Height="35px" Width="341px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Enter CVV"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server" BorderColor="#6666FF" Height="35px" Width="341px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Only 3 digit" ForeColor="Red" MaximumValue="3"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Expiry Date"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox4" runat="server" BorderColor="#6666FF" Height="35px" Width="341px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Billing Address"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox5" runat="server" BorderColor="#6666FF" Height="155px" Width="341px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderColor="White" ForeColor="White" Height="53px" Text="SUBMIT" Width="127px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderColor="White" ForeColor="White" Height="53px" Text="Go Back" Width="127px" PostBackUrl="~/Mycartpage.aspx" />
            &nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
