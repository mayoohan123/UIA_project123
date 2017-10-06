<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TP033142_UIA_booking_sys.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 837px;
        }
        .auto-style4 {
            text-align: center;
            width: 260px;
            font-size: x-large;
            color: #003300;
            height: 30px;
        }
        .auto-style5 {
            width: 418px;
        }
        .auto-style6 {
            width: 260px;
        }
        .auto-style7 {
            width: 418px;
            height: 23px;
        }
        .auto-style8 {
            width: 260px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 418px;
            text-align: right;
            font-size: medium;
            height: 23px;
            color: #003300;
        }
        .auto-style11 {
            width: 418px;
            font-size: medium;
            color: #003300;
            text-align: right;
            height: 32px;
        }
        .auto-style12 {
            width: 260px;
            text-align: center;
        }
        .auto-style13 {
            width: 418px;
            height: 30px;
        }
        .auto-style14 {
            height: 30px;
        }
        .auto-style15 {
            width: 260px;
            height: 23px;
            text-align: center;
        }
        .auto-style16 {
            height: 23px;
            text-align: left;
        }
        .auto-style17 {
            text-align: left;
            height: 32px;
        }
        .auto-style18 {
            width: 837px;
            font-size: large;
            color: #6600CC;
            height: 30px;
        }
        .auto-style20 {
            width: 260px;
            text-align: center;
            height: 32px;
        }
        .auto-style21 {
            color: #009999;
        }
        .auto-style22 {
            font-size: larger;
            color: #0099CC;
        }
        .auto-style23 {
            font-size: x-large;
            color: #009999;
        }
        .auto-style24 {
            width: 837px;
            height: 23px;
        }
        .auto-style25 {
            font-size: x-large;
            color: #0066CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Properties/Epic_Sky_by_ReverseRoad.jpg" Height="134px">
                            <br />
                            <br />
                            <br />
                            <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/Properties/uia_logo.png" Width="439px" />
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">
                        <asp:Panel ID="Panel2" runat="server" BackColor="#FFFFCC">
                            <h1 class="auto-style25">Welcome from Ukraine International Airline (UIA) </h1>
                            <h1 class="auto-style25">Online Booking</h1>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <h2 class="auto-style22"><strong><a href="Registration.aspx"><span class="auto-style21">Registration</span></a></strong></h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <h2 class="auto-style23">&nbsp;</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style4"><strong>Login Here</strong></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Email</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="emailtxt" runat="server" BackColor="White" Height="31px" Width="244px"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailtxt" ErrorMessage="Please Enter User Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Password</strong></td>
                <td class="auto-style15">
                    <asp:TextBox ID="passwordtxt" runat="server" Height="32px" Width="240px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordtxt" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="loginbtn" runat="server" BorderStyle="Double" Font-Bold="True" Font-Names="Algerian" Font-Overline="False" Font-Size="Medium" ForeColor="#336600" OnClick="loginbtn_Click" Text="Login" Width="89px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
