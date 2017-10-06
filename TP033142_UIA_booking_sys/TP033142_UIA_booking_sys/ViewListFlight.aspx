<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewListFlight.aspx.cs" Inherits="TP033142_UIA_booking_sys.ViewListFlight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #0033CC;
        }
        .auto-style3 {
            font-size: large;
            color: #003300;
        }
        .auto-style4 {
            width: 139px;
        }
        .auto-style5 {
            width: 62px;
        }
        .auto-style6 {
            width: 100%;
            height: 58px;
        }
        .auto-style7 {
            height: 193px;
        }
        .auto-style8 {
            width: 304px;
            height: 165px;
        }
        .auto-style9 {
            width: 309px;
        }
        .auto-style10 {
            width: 294px;
        }
        .auto-style11 {
            width: 137px;
        }
        .auto-style12 {
            width: 100%;
            height: 50px;
        }
        .auto-style13 {
            width: 64px;
        }
        .auto-style14 {
            width: 299px;
        }
        .auto-style15 {
            height: 165px;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
            width: 199px;
        }
        .auto-style19 {
            width: 100%;
            height: 169px;
        }
        .auto-style20 {
            text-align: right;
        }
        .auto-style21 {
            width: 199px;
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
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Properties/uia_logo.png" Height="53px" Width="439px" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" BackColor="#FFFFCC">
                        <h1 class="auto-style2"><strong>Ukarine International Airline (UIA)</strong></h1>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel3" runat="server" BackColor="#33CCCC">
                        <strong><span class="auto-style3">We always care for date and time of your efficient trip because you have right and fliexibility</span></strong></asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style4">
                                <asp:Panel ID="Panel4" runat="server" BackColor="#009999" Height="39px">
                                    <asp:Label ID="depart" runat="server" Text="Departure " Font-Bold="True" Font-Italic="False" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="White"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td class="auto-style5">
                                <asp:Panel ID="Panel5" runat="server" BackColor="#009999" Height="38px">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#FFFFCC" Text="TO" Font-Strikeout="False"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td class="auto-style10">
                                <asp:Panel ID="Panel6" runat="server" BackColor="#009999" Height="40px" Width="295px">
                                    <asp:Label ID="arrive" runat="server" Text="Arrival" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="Panel7" runat="server" BackColor="#009999" Height="38px">
                                    <asp:Label ID="depDate" runat="server" Text="Label" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                    <asp:Label ID="depDay" runat="server" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#FFFFCC" Text="Label"></asp:Label>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <table class="auto-style19">
                        <tr>
                            <td class="auto-style8">
                                <asp:GridView ID="departure_view" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Font-Bold="True" Font-Italic="False" Font-Names="Bookman Old Style" Font-Overline="False" Font-Size="Medium" Font-Underline="False" GridLines="Horizontal" >
                                    <FooterStyle BackColor="White" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#487575" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#275353" />
                                </asp:GridView>
                            </td>
                            <td class="auto-style15">
                                <asp:GridView ID="arrival_view" runat="server" BackColor="#6600CC" BorderColor="#CCCCCC" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Medium" GridLines="Horizontal" Height="166px" Width="269px">
                                    <FooterStyle BackColor="White" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#487575" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#275353" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
&nbsp;<table class="auto-style1">
                        <tr>
                            <td class="auto-style17">
                                <asp:DropDownList ID="classlist" runat="server" Height="27px" OnSelectedIndexChanged="classlist_SelectedIndexChanged" Width="161px" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style16">
                                <asp:DropDownList ID="seatlist" runat="server" Height="27px" Width="163px" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style12">
                        <tr>
                            <td class="auto-style11">
                                <asp:Panel ID="Panel8" runat="server" BackColor="#3399FF" Height="40px">
                                    <asp:Label ID="depart1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td class="auto-style13">
                                <asp:Panel ID="Panel9" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#FFFFCC" Height="41px" Width="62px">
                                    </asp:Panel>
                            </td>
                            <td class="auto-style14">
                                <asp:Panel ID="Panel10" runat="server" BackColor="#3399FF" Height="41px" Width="297px">
                                    <asp:Label ID="arrive1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="Panel11" runat="server" BackColor="#3399FF" Height="43px">
                                    <asp:Label ID="depDate1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                    <asp:Label ID="depDay1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style9">
                                <asp:GridView ID="departure_view1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Double" BorderWidth="1px" CellPadding="4" Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Medium" ForeColor="Black" GridLines="Horizontal" Height="186px" Width="260px">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </td>
                            <td>
                                <asp:GridView ID="arrival_view1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Double" BorderWidth="1px" CellPadding="4" Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Medium" ForeColor="Black" GridLines="Horizontal" Height="188px" Width="268px">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style21">
                                <asp:DropDownList ID="classlist1" runat="server" AutoPostBack="True" Height="27px" OnSelectedIndexChanged="classlist1_SelectedIndexChanged" Width="151px" >
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="seatlist1" runat="server" AutoPostBack="True" Height="27px" Width="166px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <div class="auto-style20">
            <asp:Button ID="bookbtn" runat="server" BackColor="#003366" BorderStyle="Dashed" Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Large" Font-Underline="True" ForeColor="#FFFFCC" Height="39px" OnClick="bookbtn_Click" Text="BOOK" Width="109px" />
        </div>
    </form>
</body>
</html>
