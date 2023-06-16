<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="ASTRO_VISITOR_MANAGEMENT_SYSTEM.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard | VMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/styledashboard2.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link href="css/design1.css" rel="stylesheet"/>
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
<a href="home.aspx"><i class="fas fa-sign-out-alt"></i> Log out</a>
</div>


<section class="main1">
      
      <div class="users">
        <div class="card">
      
          <div class="per">
            <table>
              <tr>
                <td><span>0</span></td>
              </tr>
            </table>
          </div>
          <button>Todays Visitors</button>
        </div>
        <div class="card">
          <div class="per">
            <table>
              <tr>
                <td><span>0</span></td>
              </tr>
            </table>
          </div>
          <button>Yesterday Visitors</button>
        </div>
        <div class="card">
          <div class="per">
            <table>
              <tr>
                <td><span>0</span></td>
              </tr>
            </table>
          </div>
          <button>Last 7 Days Visitors</button>
        </div>
        <div class="card">
          <div class="per">
            <table>
              <tr>
                <td><span>0</span></td>
              </tr>
            </table>
          </div>
          <button>Total Visitors Till Date</button>
        </div>
      </div>

      <div class="main-top">

       


          <div>
              <h2>Todays Visitors&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  Search:
                  <asp:TextBox ID="txtSearch" runat="server" />
                  <asp:Button Text="Search" runat="server" />
                  <asp:Button ID="Button1" runat="server" Text="Add Visitor" OnClick="Button1_Click"/>
                  <asp:Button ID="Button2" runat="server" Text="Complaint/Enquiry" /> </h2>

                        <asp:Label ID="lblCurrentDate" runat="server" />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Download</asp:LinkButton>

                    <br />
              <center>
            <asp:GridView ID="gvVisitors" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="True" AllowPaging="true" PageSize="10"  HorizontalAlign="Center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
                    <Columns>
                        <asp:TemplateField HeaderText="#">
                            <ItemTemplate>
                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Name" DataField="Name" />
                        <asp:BoundField HeaderText="Gender" DataField="Gender" />
                        <asp:BoundField HeaderText="Mobile" DataField="Mobile" />
                       
                        <asp:BoundField HeaderText="Client's Location" DataField="Address" />
                        <asp:BoundField HeaderText="Department To Visit" DataField="MeetWith" />
                        <asp:BoundField HeaderText="Purpose Of Visit" DataField="Reason" />
                        <asp:BoundField HeaderText="Visitor Card" DataField="VisitorCard" />
                        <asp:BoundField HeaderText="Date" DataField="SignIn" />
                        <asp:BoundField HeaderText="Time In" DataField="TimeIn" />
                        <asp:BoundField HeaderText="Time Out" DataField="TimeOut" />
                        <asp:BoundField HeaderText="Time Spend" DataField="TimeSpend" />
                        <asp:BoundField HeaderText="Status" DataField="Status" />

                       <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Label ID="lblOut" runat="server" ></asp:Label>
                                <asp:Button ID="lnkOut" Text="Log Out" Visible='<%# Eval("Status").ToString() == "In" %>' CommandName='<%# Eval("visitorId") %>'
                                runat="server" OnClick="MakeOutVisitor"></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
                </asp:GridView>
                  </center>        </div>

      </div>
    </section>
    </form>
</body>
</html>
