<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visitordetail.aspx.cs" Inherits="ASTRO_VISITOR_MANAGEMENT_SYSTEM.records2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="css/main.css" />

     <script>
  function printpage() {

   var getpanel = document.getElementById("<%= Panel6.ClientID%>");
   var MainWindow = window.open('', '', 'height=500,width=800');
   MainWindow.document.write('<html><head><title>Print Page</title>');
   MainWindow.document.write('</head><body>');
   MainWindow.document.write(getpanel.innerHTML);
   MainWindow.document.write('</body></html>');
   MainWindow.document.close();
   setTimeout(function () {
    MainWindow.print();
   }, 500);
   return false;

  }
 </script>


<script type="text/javascript">
    function PrintPage() {
        window.print();
    }
</script>



    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 884px;
            height: 770px;
            margin-left: 0px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style8 {
            width: 582px;
            height: 1699px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>


            <b>
    <div class="auto-style1">

                <asp:Button ID="Button2" runat="server" Text="BACK" OnClick="Button2_Click" />

        <asp:Button ID="Button3" runat="server" Text="PRINT" OnClientClick="javascript:PrintPage();" />
    
        <asp:Panel ID="Panel6" runat="server" HorizontalAlign="Center" >
            <br />
            <center>
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style8">
                        <br />
                        <asp:Label ID="Label48" runat="server" Font-Size="XX-Large" Text="VISITOR DETAILS"></asp:Label>
                        <br />
                        <br />
                        <table align="center" class="auto-style3">
                            <tr>
                                
                          
                                <td class="auto-style4">
                                    <asp:Label ID="Label46" runat="server" Text="Status"></asp:Label>
                                </td>

                                <td class="auto-style4">
                                    <asp:Label ID="Label94" runat="server"></asp:Label>
                                </td>

                                <td class="auto-style4">
                                </td>

                                <td class="auto-style4">
                                </td>

                                
                            </tr>
                            <tr>
                                
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Visitor Card"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label97" runat="server"></asp:Label>
                                </td>

                                <td class="auto-style4">
                                </td>

                                <td class="auto-style4">
                                </td>

                                <td class="auto-style4">
                                </td>

                                <td class="auto-style4">
                                </td>


                            </tr>
                        </table>
                        <br />
                        <asp:Label ID="Label86" runat="server" Font-Size="X-Large" Text="Visitor Details"></asp:Label>
                        <br />
                        <br />
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label98" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label99" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label100" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label9" runat="server" Text="Contact"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label101" runat="server"></asp:Label>
                                </td>
                            </tr>
                            
                        </table>
                        <br />
                        <asp:Label ID="Label92" runat="server" Font-Size="X-Large" Text="Whom to Meet Details"></asp:Label>
                        <br />
                        <br />
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label11" runat="server" Text="Department To Visit"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label105" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label15" runat="server" Text="Purpose Of Visit"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label106" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label21" runat="server" Text="Date of Visit"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label107" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label23" runat="server" Text="Time In"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label108" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label25" runat="server" Text="Time Out"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label109" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label13" runat="server" Text="Time Spend"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label110" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
                </center>
        </asp:Panel>
    </center>
    </form>
</body>
</html>
