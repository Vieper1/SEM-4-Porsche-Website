<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankLogin.aspx.cs" Inherits="SEM_4_Project_WebProgramming.BankLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Resources/loginOrSignupStyle.css"/>
    <title>Sniper Login</title>
</head>
<body>
<form id="loginform" runat="server">
    <div id="allTheThings">
			<table align="center" cellspacing="10px">
				<tr>
					<td>Account No:</td>
					<td>
                        <asp:TextBox ID="accountnumber" runat="server" TextMode="Number" CssClass="input"></asp:TextBox>
                        <asp:Label ID="accnowarning" runat="server" Text=""></asp:Label>
					</td>
				</tr>
				<tr>
					<td>Password:</td>
					<td>
                        <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="input"></asp:TextBox>
                        <asp:Label ID="pswdwarning" runat="server" Text=""></asp:Label>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
                        <asp:Button ID="paybutton" runat="server" Text="Confirm Transaction" CssClass="buttonPay" OnClick="paybutton_Click"/>
					</td>
				</tr>
                <tr></tr>
                <tr></tr>
				<tr>
                    <td></td>
					<td>
						<p id="noAccount">Don't have an account? <a href="BankCreateAccount.aspx">Sign up</a></p>
					</td>
				</tr>
			</table>
			<br>
			<p id="footnote">In partnership with Porsche&reg;&nbsp;</p>
	</div>
</form>
</body>
</html>
