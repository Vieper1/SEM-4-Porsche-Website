﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacePage.aspx.cs" Inherits="SEM_4_Project_WebProgramming.FacePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/ico" href="Resources/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="Resources/homePageStyle.css"/>
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
		<div id="divPhotos">
			<img src="Resources/photo0.jpg" height="100%" width="auto"></img>
		</div>
		<div id="divPhotoSelector">
			<input type="radio" name="radioPhotos" class="photoSelector" id="radioPhotoInitial" value="0" checked="checked"/>&nbsp;&nbsp; 
			<input type="radio" name="radioPhotos" class="photoSelector" value="1"/>&nbsp;&nbsp;
			<input type="radio" name="radioPhotos" class="photoSelector" value="2"/>&nbsp;&nbsp;
			<input type="radio" name="radioPhotos" class="photoSelector" value="3"/>&nbsp;&nbsp;
			<input type="radio" name="radioPhotos" class="photoSelector" value="4"/>
		</div>
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
