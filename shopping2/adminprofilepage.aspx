<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminprofilepage.aspx.cs" Inherits="shopping2.adminprofilepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
</head>
<body>
<div style="padding-left:16px">
 <center> <h1><b>Admin Page</b></h1></center>
  <br />
    <br />
</div>
<div class="topnav">
  <a class="active" href="WebForm1.aspx">My Home</a>
  <a href="WebForm1.aspx">Main Page</a>
  <a href="addcategory.aspx">Add Category</a>
  <a href="addproduct.aspx">Add Product</a>
  <a href="Editcategory.aspx">Edit Category </a>
  <a href="editproduct.aspx">Edit Product</a>
  <a href="#feedback">Check FeedBack</a>
  <a href="#reply">Reply</a>
  
  
</div>

<%--<div style="padding-left:16px">
  <h2><b>Admin page</b></h2>
  <p>Some content..</p>
</div>--%>
    <div>
        <center><h1>Welcome</h1></center>
        
    </div>

</body>
</html>

   
    </asp:Content>
