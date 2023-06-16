<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visitormanage2.aspx.cs" Inherits="ASTRO_VISITOR_MANAGEMENT_SYSTEM.visitormanage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Visitors | VMS</title>
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
          <img src="images/nama.png">
          <span class="nav-item">Admin</span>
        </a></li>

  <a href="dashboard.aspx"><i class="fas fa-menorah"></i> Dashboard</a></br>
  <a href="visitoradd.aspx"><i class="fa fa-fw fa-user"></i> New Visitor</a></br>
  <a href="visitormanage.aspx"><i class="fas fa-database"></i> Manage Visitors</a></br>
  <a href="visitormanage2.aspx"><i class="fas fa-chart-bar"></i> Download Report</a>
</br></br></br></br></br></br></br></br></br></br></br></br></br>
<a href="home.aspx"><i class="fas fa-sign-out-alt"></i> Log out</a>
</div>


<section class="main1">
      <div class="main-top">

       


          <div>
              <h2>Manage Visitors&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  Search:
                  <asp:TextBox ID="txtSearch" runat="server" />
                  <asp:Button Text="Search" runat="server" />
                  
&nbsp;&nbsp; </h2>

            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Download</asp:LinkButton>

                    <br />


              <asp:Label ID="Label5" runat="server" Text="Hello Inspector"></asp:Label>
        <br />
    
        <asp:Label ID="userLabel" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="CASES" Font-Size="X-Large"></asp:Label>
        <br />
    
        <b>

        <table align="center" class="auto-style5">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Enter Case ID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" />
                </td>
            </tr>
        </table>
        </b>
        <br />
        <br />


              <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No records has been added." BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="128px" Width="1011px" CssClass="auto-style2" AllowPaging="true" AllowSorting="true" OnSorting="OnSorting" OnPageIndexChanging="OnPageIndexChanging" PageSize="3">
            <Columns>
                <asp:BoundField DataField="complaintid" HeaderText="Case ID" SortExpression="complaintid">
                <HeaderStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="iofficerid" HeaderText="Officer ID" SortExpression="iofficerid">
                <HeaderStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="dateofcomplaint" HeaderText="Date Of Complaint" SortExpression="dateofcomplaint">
                <HeaderStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="crimetype" HeaderText="Age Bracket" SortExpression="crimetype">
                <HeaderStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                <HeaderStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="View">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("complaintid")%>' Height="41px" OnClick="Button1_Click" Text="View" Width="113px" />
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action Field">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("complaintid")%>' Height="41px" OnClick="Button2_Click" Text="Action Field" Width="113px" />
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Report">
                    <ItemTemplate>
                        <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("complaintid")%>' Height="41px" OnClick="Button3_Click" Text="Report" Width="113px" />
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>


                  </center>        </div>

      </div>
    </section>
    </form>
</body>
</html>
