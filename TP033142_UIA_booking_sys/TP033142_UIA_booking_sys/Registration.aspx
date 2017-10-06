<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TP033142_UIA_booking_sys.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #0033CC;
        }
        .auto-style4 {
            font-size: large;
            color: #FF3300;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style6 {
            width: 234px;
        }
        .auto-style7 {
            width: 234px;
            text-align: right;
            color: #336600;
        }
        .auto-style8 {
            width: 277px;
        }
        .auto-style9 {
            color: #FF0000;
        }
        .auto-style10 {
            width: 234px;
            height: 23px;
        }
        .auto-style11 {
            width: 277px;
            height: 23px;
            text-align: right;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 234px;
            height: 22px;
        }
        .auto-style14 {
            width: 277px;
            height: 22px;
            text-align: right;
        }
        .auto-style15 {
            height: 22px;
        }
        .auto-style16 {
            margin-top: 0px;
        }
        .auto-style17 {
            font-size: x-large;
            color: #0066CC;
        }
        .auto-style18 {
            font-size: x-large;
            color: #009999;
        }
        .auto-style19 {
            width: 234px;
            text-align: right;
            color: #336600;
            height: 42px;
        }
        .auto-style20 {
            width: 277px;
            height: 42px;
        }
        .auto-style21 {
            height: 42px;
        }
        .auto-style22 {
            width: 277px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Panel ID="Panel4" runat="server" BackImageUrl="~/Properties/Epic_Sky_by_ReverseRoad.jpg" Height="134px">
                            <br />
                            <br />
                            <br />
                            <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/Properties/uia_logo.png" Width="439px" />
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <h1 class="auto-style2"></h1>
                        <asp:Panel ID="Panel5" runat="server" BackColor="#FFFFCC">
                            <h1 class="auto-style17">Ukraine International Airline (UIA)</h1>
                        </asp:Panel>
                        <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" CssClass="auto-style16" Height="37px">
                            <h1 class="auto-style18">To Be Our Family Member, Create An Account</h1>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Panel ID="Panel2" runat="server" BackColor="#FF9933">
                            - Fill up detail information in the form below</asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Panel ID="Panel3" runat="server" BackColor="#FF9933">
                            - Passwords are required to be minmum of 6 characters in length</asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>User Name</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="newusernametxt" runat="server" BackColor="Silver" Height="28px" Width="240px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="newusernametxt" CssClass="auto-style9" ErrorMessage="Enter New User Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>E-mail</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="emailtxt" runat="server" BackColor="Silver" Height="27px" Width="237px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailtxt" CssClass="auto-style9" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailtxt" ErrorMessage="Enter Valid E-mail " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Password</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="newpasswordtxt" runat="server" BackColor="Silver" Height="27px" TextMode="Password" Width="237px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="newpasswordtxt" CssClass="auto-style9" ErrorMessage="Enter New Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Confirm Password</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="confirmpasswordtxt" runat="server" BackColor="Silver" Height="27px" TextMode="Password" Width="237px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmpasswordtxt" CssClass="auto-style9" ErrorMessage="Confirm Password Here"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="confirmpasswordtxt" ErrorMessage="Both passwords must be same" ForeColor="Red" ControlToCompare="newpasswordtxt"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Country</strong></td>
                <td class="auto-style8">
                    <asp:DropDownList ID="countrycob" runat="server" Height="25px" Width="245px">
                        <asp:ListItem Selected="True">Select Country</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>Malaysia</asp:ListItem>
                        <asp:ListItem>Singapore</asp:ListItem>
                        <asp:ListItem>Myanmar</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="countrycob" CssClass="auto-style9" ErrorMessage="Choose Country Here"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Date of Birth</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="birthtxt" runat="server" Height="24px" TextMode="Date" Width="231px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="birthtxt" ErrorMessage="Choose Date of Birth" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="submitbtn" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="Large" ForeColor="Blue" OnClick="submitbtn_Click" Text="Submit" Width="84px" />
                </td>
                <td>
                    <asp:Button ID="restbtn" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="Large" ForeColor="#006600" OnClick="restbtn_Click" Text="Reset" Width="85px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
