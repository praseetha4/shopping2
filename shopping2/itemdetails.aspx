<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="itemdetails.aspx.cs" Inherits="shopping2.itemdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        .auto-style1 {
            width: 472px;
        }
        .auto-style2 {
            width: 596px;
        }
        .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
        .card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
.price {
  color: grey;
  font-size: 22px;
}

        .auto-style3 {
            width: 472px;
            height: 32px;
        }
        .auto-style4 {
            width: 596px;
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
        }

        .auto-style6 {
            width: 596px;
            text-align: center;
            height: 514px;
        }
        .auto-style7 {
            width: 472px;
            text-align: center;
            height: 514px;
        }
        .auto-style8 {
            height: 514px;
        }
        .auto-style9 {
            margin-right: 13px;
            margin-top: 0px;
        }
        .auto-style10 {
            margin-bottom: 4px;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="w-100">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <br />
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image1" runat="server" Height="508px" Width="579px" BorderStyle="Ridge" />
            </td>
            <td class="auto-style6">
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Font-Underline="True" ForeColor="#990033"></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Rs" Font-Bold="True" Font-Size="Large"></asp:Label>
                .<asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Italic="True" ForeColor="#333300" Font-Bold="False" Font-Size="Medium"></asp:Label>
            &nbsp;<br />
                <br />
                Available:
                <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="#FF6600"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Status" ForeColor="#333333"></asp:Label>
                &nbsp;:<asp:Label ID="Label5" runat="server" Text="Label" ForeColor="#66FF66"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#3366FF" Text="Enter Quantity"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage=" Required !!!" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style10" Height="58px" ImageUrl="~/button_add-to-cart.png" Width="184px" CommandArgument='<%# Eval("proid") %>' OnClick="ImageButton1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style9" Height="58px" ImageUrl="~/button_continue.png" PostBackUrl="~/userprofile.aspx" Width="184px" />
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#00CC00" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <div class="card">
                </div>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
