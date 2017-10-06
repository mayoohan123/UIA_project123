<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="TP033142_UIA_booking_sys.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #0000FF;
            height: 43px;
        }
        .auto-style3 {
            font-size: large;
            color: #003300;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
            color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Properties/Epic_Sky_by_ReverseRoad.jpg" Height="137px">
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" BackColor="#FFFFCC">
                        <h1 class="auto-style2">Ukraine International Airline (UIA)</h1>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel3" runat="server" BackColor="#33CCCC">
                        <span class="auto-style3">Thank you for your cooperating with us. We are hoping to meet you again soon...</span></asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel4" runat="server" BackColor="#999966" Height="57px">
                        <div class="auto-style4">
                            <strong>YOUR PAYMENT HAS BEEN MADE AND SUCCEED.</strong></div>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
