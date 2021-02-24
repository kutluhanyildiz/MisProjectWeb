<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="MisProjectWeb.LoginPanel" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Segoe Script";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 700px; margin:auto; background-color: #FFFFFF;">
            <h2><span class="newStyle1">Marmara University Information Management System </span></h2>
            <br />
            <div "margin=auto" style="text-align: center">
            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl="~/logo1.png" />
            </div>
            <br />
            <br />
            <div>
                <asp:Label for="TxtUsername" runat="server">Username</asp:Label>
                <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control" Height="35px" Width="700px"></asp:TextBox>
            </div>           
            
            <div>
                <asp:Label for="TxtPassword" runat="server">Password</asp:Label>
                <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" Height="35px" Width="700px" TextMode="Password"></asp:TextBox>
            <br />
            </div>

            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-success" Width="700px" OnClick="Button1_Click" />

        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Instructor Login" CssClass="btn btn-danger" Width="220px" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Forgot your password?" CssClass="btn btn-warning" Width="250px" />
        <asp:Button ID="Button4" runat="server" Text="Help" CssClass="btn btn-info" Width="220px" />
            </div>
            </form>
</body>
</html>
