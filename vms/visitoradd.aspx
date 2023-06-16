<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visitoradd.aspx.cs" Inherits="ASTRO_VISITOR_MANAGEMENT_SYSTEM.visitoradd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Visitor | VMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/styledashboard2.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link href="css/styleform2.css" rel="stylesheet"/>
    <style type="text/css">
        .mt-2 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidenav">

<li><a href="#" class="logo">
          <img src="images/frontdesk.jpg">
          <span class="nav-item">Admin</span>
        </a></li>

  <a href="dashboard.aspx"><i class="fas fa-menorah"></i> Dashboard</a></br>
  <a href="visitoradd.aspx"><i class="fa fa-fw fa-user"></i> New Visitor</a></br>
  <a href="visitormanage.aspx"><i class="fas fa-database"></i> Manage Visitors</a></br>
  </br>
</br></br></br></br></br></br></br></br></br></br></br></br></br>
<a href="Home.aspx"><i class="fas fa-sign-out-alt"></i> Log out</a>
</div>


<section class="main1">
            <center>
                <div style="width: 678px">
                 
                    <div class="row">
                        <div class="col-75">
                            <div class="container">
                                <div class="row">
                                    <div class="col-50">
                                        <h3>ADD VISITOR</h3>


                                        <div class="row">
                                            <div class="col-50">
                                                <label for="state">
                                                  FIRST NAME</label>
                                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col-50">
                                                <label for="zip">
                                                  LAST NAME</label>
                                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <label for="email">
                                        GENDER</label>

                                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" CssClass="form-control radiostyle">
                                        <asp:ListItem Text="Male" Value="1" />
                                        <asp:ListItem Text="Female" Value="2" />
                                        </asp:RadioButtonList>

                                        <label for="adr">
                                        <i class="fa fa-address-card-o"></i>CLIENT'S LOCATION</label>
                                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                          
                                    </div>
                                    <div class="col-50">
                                        <h3><asp:Label ID="lblCurrentDate" runat="server" /></h3>
                                        <label for="cname">
                                          PHONE NUMBER</label>
                                        <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                                        <label for="ccnum">
                                          DEPARTMENT TO VISIT</label>
                        <asp:DropDownList ID="ddlStaffs" runat="server" CssClass="form-control mt-2" Height="43px" Width="171px">
                            <asp:ListItem Text="Select department here" Value="0" Selected="True" />
                            <asp:ListItem Text="Admin - Admin" Value="1" />
                            <asp:ListItem Text="IT - IT" Value="2" />
                            <asp:ListItem Text="HR - HR" Value="3" />
                        </asp:DropDownList>
                                        <br />
                                        <label for="expmonth">
                                          <br />PURPOSE OF VISIT</label>
                                        <asp:TextBox ID="txtReason" runat="server"></asp:TextBox>
 
                                        <label for="cname">
                                          VISITOR CARD</label>
                        <asp:DropDownList ID="ddlVisitorCard" runat="server" CssClass="form-control mt-2" Height="43px" Width="171px">
                            <asp:ListItem Text="Select Card here" Value="0" Selected="True" />
                            <asp:ListItem Text="VSMFF12134" Value="1" />
                            <asp:ListItem Text="VSDH23322" Value="2" />
                            <asp:ListItem Text="DEWWSR3546" Value="3" />
                        </asp:DropDownList>
                                       
                                    </div>
                                </div>
                                <asp:Button ID="Btn" runat="server" Text="Submit" Height="40px" Width="355px" OnClick="Btn_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </center>
        </div>
      </div>
    </section>
    </form>
</body>
</html>
