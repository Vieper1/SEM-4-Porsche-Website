<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="creditsPage.aspx.cs" Inherits="SEM_4_Project_WebProgramming.creditsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/ico" href="Resources/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="Resources/homePageStyle.css" />
    <link rel="stylesheet" type="text/css" href="Resources/creditsPageStyle.css" />
    <title>Welcome to Porsche</title>
</head>
<body>
<form id="form1" runat="server">
    
    <header>
			<div id="divHeader">
				<div id="divNavigation">
					<table id="tableNavigation" width="100%" height="100%">
						<tr>
							<td class="cellsNavigation" align="center" id="cellModels">MODELS</td>
	                        <td class="cellsNavigation" align="center"><a href="creditsPage.aspx">CREDITS</a></td>
	                        <td class="cellsNavigation" align="center"><a href="FacePage.aspx">HOME</a></td>
						</tr>
					</table>
				</div>
				<div id="divLogo">
					<img src="Resources/logo.png" height="100%" width="auto"></img>
				</div>
				<div id="divModels">
					<table id="tableModels" cellspacing="10px" width="100%">
						<tr>
							<td class="modelTableHeaders">PERFORMANCE EDITION</td>
							<td class="modelTableHeaders">SUPERCARS</td>
							<td class="modelTableHeaders">TRACK</td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911carrera" runat="server" CssClass="" OnClick="l911carrera_Click">911 Carrera</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911turbo" runat="server" CssClass="" OnClick="l911turbo_Click">911 Turbo</asp:LinkButton></td>
							<td><asp:LinkButton ID="l919hybrid" runat="server" CssClass="" OnClick="l919hybrid_Click">919 Hybrid</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911carreras" runat="server" CssClass="" OnClick="l911carreras_Click">911 Carrera S</asp:LinkButton></td></td>
							<td><asp:LinkButton ID="l911turbos" runat="server" CssClass="" OnClick="l911turbo_Click">911 Turbo S</asp:LinkButton></td>
							<td><asp:LinkButton ID="lrsspyder" runat="server" CssClass="" OnClick="lrsspyder_Click">RS Spyder</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911carrera4" runat="server" CssClass="" OnClick="l911carrera4_Click">911 Carrera 4</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911turboscab" runat="server" CssClass="" OnClick="l911turboscab_Click">911 Turbo S Cabriolet</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911carrera4s" runat="server" CssClass="" OnClick="l911carrera4s_Click">911 Carrera 4S</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911turbocab" runat="server" CssClass="" OnClick="l911turbocab_Click">911 Turbo Cabriolet</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911targa4" runat="server" CssClass="" OnClick="l911targa4_Click">911 Targa 4</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911gt3rs" runat="server" CssClass="" OnClick="l911gt3rs_Click">911 GT3 RS</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911targa4s" runat="server" CssClass="" OnClick="l911targa4s_Click">911 Targa 4S</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911r" runat="server" CssClass="" OnClick="l911r_Click">911 R</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="lcaymans" runat="server" CssClass="" OnClick="l911caymans_Click">911 Cayman S</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="lcaymangts" runat="server" CssClass="" OnClick="l911caymangts_Click">911 Cayman GTS</asp:LinkButton></td>
							<td class="modelTableHeaders">HYPERCARS</td>
							<td class="modelTableHeaders">UNCLASSIFIED</td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="lcaymangt4" runat="server" CssClass="" OnClick="l911caymangt4_Click">911 Cayman GT4</asp:LinkButton></td>
							<td><asp:LinkButton ID="l918spyder" runat="server" CssClass="" OnClick="l918spyder_Click">918 Spyder</asp:LinkButton></td>
							<td><asp:LinkButton ID="lmissione" runat="server" CssClass="" OnClick="lmissione_Click">Mission E</asp:LinkButton></td>
						</tr>
					</table>
				</div>
			</div>
		</header>




    <br>
    <div id="divCreditsTable">
        <table width="90%" height="27%" align="center" bgcolor="#2B2B2B">
            <tr>
                <td colspan="2" width="100%" bgcolor="#FF1744" class="creditsNames">&nbsp;&nbsp;&nbsp;PsyClone</td>
                <td rowspan="3"><img src="Resources/PsyClone.jpg" height="32%" width="auto"></img></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;CSS Styling, jQuery Animations, JavaScript Resource Extraction</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;Client-side Specialist</td>
            </tr>
        </table>

        <table width="90%" height="27%" align="center" bgcolor="#2B2B2B">
            <tr>
                <td rowspan="3"><img src="Resources/Viper.jpg" height="55%" width="auto"></img></td>
                <td colspan="2" bgcolor="#FF1744" width="100%" class="creditsNames">Viper</td>
            </tr>
            <tr>
                <td colspan="2">ASP Back-end, Database Linking & Management</td>
            </tr>
            <tr>
                <td colspan="2">Server-side Specialist</td>
            </tr>
        </table>

        <table width="90%" height="27%" align="center" bgcolor="#2B2B2B">
            <tr>
                <td colspan="2" bgcolor="#FF1744" width="100%" class="creditsNames"></td>
                <td rowspan="3"><img src="Resources/missing.jpg" height="50%" width="auto"></img></td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>

        </table>
    </div>

    <br>
    <footer>
        <div id="divFooter">
            <table id="tableFooter" align="right" cellpadding="5px">
                <tr>
                    <td><a href="https://en.wikipedia.org/wiki/Porsche"><img src="Resources/wiki.png" height="15%"></img>&nbsp;Wiki</a></td>
                    <td><a href="https://www.facebook.com/porsche"><img src="Resources/facebook.png" height="15%">&nbsp;Facebook</a></td>
                    <td><a href="https://twitter.com/Porsche"><img src="Resources/twitter.png" height="15%">&nbsp;Twitter</td>
                </tr>
            </table>
        </div>
    </footer>

    <script src="Resources/jQuery.js"></script>
    <script src="Resources/jQueryUI.js"></script>
    <script src="Resources/homePageTransitions.js"></script>
</form>
</body>
</html>
