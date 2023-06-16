<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ASTRO_VISITOR_MANAGEMENT_SYSTEM.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form | VMS</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
        <div class="container">
        <div class="login">
    <form id="form1" runat="server">
        <center><h2>Visitor Management System</h2></center>
                <hr />
                <p>Login In</p>
                <label>Staff ID</label>
               <asp:TextBox ID="txtStaffID" runat="server" placeholder="Enter Staff ID"></asp:TextBox>
                <label>Password</label>
               <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Your Password!" TextMode="Password"></asp:TextBox>
               <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" OnClick="btnSubmit_Click" />
                <Center><a href="#">Forgot Password?</a></p></Center>
                 <center>Register <a href="Register.aspx"> Here</a></center>
            </form>
        </div>
        <div class="pic">
            <img src="images/frontdesk.jpg" />
        </div>
    </div>   
</body>
</html>
