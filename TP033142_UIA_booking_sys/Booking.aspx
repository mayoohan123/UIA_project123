<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="TP033142_UIA_booking_sys.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-weight: normal;
            color: #0000FF;
            height: 45px;
        }
        .auto-style3 {
            color: #003300;
            font-size: large;
        }
        .auto-style5 {
            width: 150px;
        }
        .auto-style6 {
            width: 145px;
        }
        .auto-style7 {
            width: 134px;
        }
        .auto-style8 {
            width: 148px;
        }
        .auto-style9 {
            width: 139px;
        }
        .auto-style10 {
            width: 336px;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            font-size: large;
            color: #FFFFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Properties/Epic_Sky_by_ReverseRoad.jpg" Height="137px">
                        <br />
                        <br />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/Properties/uia_logo.png" Width="439px" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" BackColor="#FFFFCC">
                        <h1 class="auto-style2"><strong>Ukraine International Airline (UIA)</strong></h1>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel3" runat="server" BackColor="#33CCCC" Height="25px">
                        <span class="auto-style3">We are always welcoming here</span></asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel4" runat="server" BackColor="#9999FF" Height="31px">
                        <h2><strong><span class="auto-style13">Booking Summary</span></strong></h2>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="deplab" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="deptimelab" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:Label ID="dep_arr" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="dep_arr_timelab" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:Label ID="depdatelab" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="depclasslab" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="Seat"></asp:Label>
&nbsp;<asp:Label ID="depseatlab" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="arrlab" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="arrtimelab" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:Label ID="arr_deplab" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="arr_dep_timelab" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="arrdatelab" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="retclasslab" runat="server" Text="Label"></asp:Label>
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="Seat"></asp:Label>
                                <asp:Label ID="retseatlab" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">
                                <asp:Panel ID="Panel5" runat="server" BackColor="#669999" Height="36px" Width="361px">
                                    <asp:Label ID="deppricelab" runat="server" Font-Bold="False" Font-Names="Bookman Old Style" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="Panel6" runat="server" BackColor="#669999" Height="36px">
                                    <asp:Label ID="arrpricelab" runat="server" Font-Names="Bookman Old Style" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Panel ID="Panel7" runat="server" BackColor="#669999" Height="36px" Width="360px">
                                    <asp:Label ID="depclasspricelab" runat="server" Font-Bold="False" Font-Names="Bookman Old Style" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="Panel8" runat="server" BackColor="#669999" Height="36px">
                                    <asp:Label ID="arriclasspricelab" runat="server" Font-Bold="False" Font-Names="Bookman Old Style" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Panel ID="Panel9" runat="server" BackColor="#CCCCCC" Height="36px" Width="360px">
                                    <asp:Label runat="server" Text="Total Bill" Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Medium" ForeColor="#FF9933"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="Panel10" runat="server" BackColor="#CCCCCC" Height="36px">
                                    <asp:Label ID="totalbilllab" runat="server" Text="Label" Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Medium" ForeColor="#FF9933"></asp:Label>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <div class="auto-style12">
            <asp:Button ID="paybtn" runat="server" BackColor="#0066CC" Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Medium" ForeColor="#FFFFCC" Height="38px" Text="PAY" Width="96px" OnClick="paybtn_Click" />
        </div>
    </form>
</body>
</html>
