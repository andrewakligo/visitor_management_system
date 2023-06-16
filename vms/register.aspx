<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ASTRO_VISITOR_MANAGEMENT_SYSTEM.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Sign Up | VMS</title>
   <link rel="stylesheet" href="css/style1.css" />
</head>
<body>
    <div class="signup-box">
      <h1>Sign Up</h1>
      <h4>ADMINISTRATOR ONLY</h4>

    <form id="form1" runat="server">
        <div>
            <label>First Name</label>
            <asp:TextBox ID="txtFirstName" runat="server" placeholder="Enter First Name"></asp:TextBox>
            <label>Last Name</label>
            <asp:TextBox ID="txtLastName" runat="server" placeholder="Enter Last Name"></asp:TextBox>
            <label>Staff ID</label>
            <asp:TextBox ID="txtStaffID" runat="server" placeholder="Enter Staff ID"></asp:TextBox>
            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            <label>Confirm Password</label>
            <asp:TextBox ID="txtCPassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="button" />
        </div>
    </form>
        <p>
        Already have an account? <a href="Home.aspx">Login here</a>
      </p>
    </div>
    
</body>
</html>
