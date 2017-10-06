<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dep_Arr_Online_Member.aspx.cs" Inherits="TP033142_UIA_booking_sys.Dep_Arr_Online_Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            color: #336600;
        }
        .auto-style6 {
            color: #0033CC;
        }
        .auto-style7 {
            color: #003300;
            font-size: large;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style11 {
            width: 218px;
        }
        .auto-style12 {
            width: 222px;
        }
        .auto-style13 {
            width: 193px;
        }
        .auto-style14 {
            width: 190px;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            width: 100%;
            height: 260px;
        }
        .auto-style17 {
            color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style16">
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Properties/Epic_Sky_by_ReverseRoad.jpg" Height="134px">
                        <br />
                        <br />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/Properties/uia_logo.png" Width="439px" />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" BackColor="#FFFFCC">
                        <h1 class="auto-style6">Ukraine International Airline (UIA)</h1>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel3" runat="server" BackColor="#33CCCC">
                        <span class="auto-style8"><strong>WE</strong></span><strong><span class="auto-style8"> ARE EVERWHERE</span></strong> <span class="auto-style7"><strong>WHEREVER YOU TO GO ......</strong></span></asp:Panel>
                </td>
            </tr>
        </table>
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
                    <asp:DropDownList ID="departcob0" runat="server" Height="32px" Width="227px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="arrivecob0" runat="server" Height="32px" Width="227px" >
                    </asp:DropDownList>
                </td>
                <td class="auto-style13"><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Select Departure Date"></asp:Label>
                    <br />
                    </strong>
                    <asp:TextBox ID="departdate0" runat="server" BackColor="#CCCCCC" Height="22px" Width="180px"></asp:TextBox>
                    <asp:Calendar ID="Calendar3" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="174px" Width="193px" OnSelectionChanged="Calendar3_SelectionChanged">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
                <td class="auto-style14"><strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Select Return Date"></asp:Label>
                    <br />
                    </strong>
                    <asp:TextBox ID="arrivedate0" runat="server" BackColor="#CCCCCC" Height="22px" Width="180px"></asp:TextBox>
                    <asp:Calendar ID="Calendar4" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="174px" Width="193px" OnSelectionChanged="Calendar4_SelectionChanged">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
                <td class="auto-style15">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="findflightbtn0" runat="server" BackColor="#009999" BorderStyle="Double" Font-Bold="True" Font-Names="Algerian" ForeColor="#99FF99" Height="48px" Text="Find Flight" Width="133px" OnClick="findflightbtn0_Click" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Panel ID="Panel4" runat="server" BackColor="#FF3300">
                        <span class="auto-style17"><strong>**Return Date is Optional for One Way Trip</strong></span></asp:Panel>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
