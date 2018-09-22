<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankCreateAccount.aspx.cs" Inherits="SEM_4_Project_WebProgramming.BankCreateAccount"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Resources/createAccountStyle.css"/>
	<title>Create Account</title>
</head>
<body>
    <div id="allTheThings">
			<form name="clientform" runat="server">
				<fieldset id ="fieldset1">
					<legend id="legend1">Enter your details:</legend>
					<table cellpadding="5" cellspacing="20">
						<br>
						<tr>
							<td>Name:<font color="red"> *</font></td>
							<td>
                                <asp:TextBox ID="ffname" runat="server" CssClass="input"></asp:TextBox>
                                <asp:TextBox ID="fmname" runat="server" CssClass="input"></asp:TextBox>
                                <asp:TextBox ID="flname" runat="server" CssClass="input"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>Age:<font color="red"> *</font></td>
							<td>
								<asp:TextBox ID="fage" runat="server" CssClass="input" TextMode="Number"></asp:TextBox>

							</td>
						</tr>
						<tr>
							<td>Email:<font color="red"> *</font></td>
							<td>
								<asp:TextBox ID="femail" runat="server" CssClass="input" TextMode="Email"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>Occupation:</td>
							<td>
								<asp:TextBox ID="foccu" runat="server" CssClass="input"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>Initial Credit:<font color="red"> *</font></td>
							<td>
								<asp:TextBox ID="finitcredit" runat="server" CssClass="input" TextMode="Number"></asp:TextBox>

							</td>
						</tr>
						<tr>
							<td>Password:<font color="red"> *</font></td>
							<td>
								<asp:TextBox ID="fpassword" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>Confirm Password:<font color="red"> *</font></td>
							<td>
								<asp:TextBox ID="fpasswordconf" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>

							</td>
						</tr>
						<tr>
						</tr>
						<tr>
							<td colspan="2">
                                <asp:CheckBox ID="agreement" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;I accept the terms & conditions
							</td>
						</tr>
					</table>
				</fieldset>
				<br>
                <asp:Button ID="submitbutton" runat="server" Text="Submit" CssClass="buttons1button" OnClick="submitbutton_Click"/>
                <asp:Button ID="resetbutton" runat="server" Text="Reset" CssClass="buttons1reset"/>

			    
            </form>
		</div>
</body>
</html>
