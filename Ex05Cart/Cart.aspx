﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 5: Shopping Cart</title>
    <link href="Styles/Main.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Cart.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <header>
        <img src="Images/banner.jpg" alt="Halloween Store" />
    </header>
    <section>
        <form id="form1" runat="server">
            <h1>Your shopping cart</h1>
            <asp:ListBox ID="lstCart" runat="server"></asp:ListBox>
            <div id="cartbuttons">
                <asp:Button ID="btnRemove" runat="server" Text="Remove Item" 
                    onclick="btnRemove_Click" CssClass="button" /><br />
                <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" 
                    onclick="btnEmpty_Click" CssClass="button" />
            </div>
            <div id="shopbuttons">
                <asp:Button ID="btnContinue" runat="server"
                    PostBackUrl="~/Order.aspx" Text="Continue Shopping" CssClass="button" />
                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out"  
                    onclick="btnCheckOut_Click" />
            </div>
            <p id="message">
                <asp:Label ID="lblMessage" runat="server" EnableViewState="False" 
                    CssClass="button"></asp:Label>
            </p>
        </form>
    </section>
</body>
</html>
