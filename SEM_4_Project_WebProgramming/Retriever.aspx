<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Retriever.aspx.cs" Inherits="SEM_4_Project_WebProgramming.Retriever" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/ico" href="Resources/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="Resources/contentstyle.css"/>
    <title>The Showroom</title>
</head>
<body onload="extractImage()">
    <form id="retriever" runat="server">


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
							<td><asp:LinkButton ID="l911carrera" runat="server" CssClass="CarLinks" OnClick="l911carrera_Click">911 Carrera</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911turbo" runat="server" CssClass="CarLinks" OnClick="l911turbo_Click">911 Turbo</asp:LinkButton></td>
							<td><asp:LinkButton ID="l919hybrid" runat="server" CssClass="CarLinks" OnClick="l919hybrid_Click">919 Hybrid</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911carreras" runat="server" CssClass="CarLinks" OnClick="l911carreras_Click">911 Carrera S</asp:LinkButton></td></td>
							<td><asp:LinkButton ID="l911turbos" runat="server" CssClass="CarLinks" OnClick="l911turbo_Click">911 Turbo S</asp:LinkButton></td>
							<td><asp:LinkButton ID="lrsspyder" runat="server" CssClass="CarLinks" OnClick="lrsspyder_Click">RS Spyder</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911carrera4" runat="server" CssClass="CarLinks" OnClick="l911carrera4_Click">911 Carrera 4</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911turboscab" runat="server" CssClass="CarLinks" OnClick="l911turboscab_Click">911 Turbo S Cabriolet</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911carrera4s" runat="server" CssClass="CarLinks" OnClick="l911carrera4s_Click">911 Carrera 4S</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911turbocab" runat="server" CssClass="CarLinks" OnClick="l911turbocab_Click">911 Turbo Cabriolet</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911targa4" runat="server" CssClass="CarLinks" OnClick="l911targa4_Click">911 Targa 4</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911gt3rs" runat="server" CssClass="CarLinks" OnClick="l911gt3rs_Click">911 GT3 RS</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="l911targa4s" runat="server" CssClass="CarLinks" OnClick="l911targa4s_Click">911 Targa 4S</asp:LinkButton></td>
							<td><asp:LinkButton ID="l911r" runat="server" CssClass="CarLinks" OnClick="l911r_Click">911 R</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="lcaymans" runat="server" CssClass="CarLinks" OnClick="l911caymans_Click">911 Cayman S</asp:LinkButton></td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="lcaymangts" runat="server" CssClass="CarLinks" OnClick="l911caymangts_Click">911 Cayman GTS</asp:LinkButton></td>
							<td class="modelTableHeaders">HYPERCARS</td>
							<td class="modelTableHeaders">UNCLASSIFIED</td>
						</tr>
						<tr>
							<td><asp:LinkButton ID="lcaymangt4" runat="server" CssClass="CarLinks" OnClick="l911caymangt4_Click">911 Cayman GT4</asp:LinkButton></td>
							<td><asp:LinkButton ID="l918spyder" runat="server" CssClass="CarLinks" OnClick="l918spyder_Click">918 Spyder</asp:LinkButton></td>
							<td><asp:LinkButton ID="missione" runat="server" CssClass="CarLinks" OnClick="lmissione_Click">Mission E</asp:LinkButton></td>
						</tr>
					</table>
				</div>
		</div>
	</header> 
        <br />
    






        

        <div id="divCarPhoto">
            <img src="Resources/PorscheWall1.jpg" height="100%" width="auto"></img>
        </div>

        <div class="contentContainer">

            <table>
                <td><div id="contentColumn">

                    <div class="contentPanel" id="contentPanelPanel">
                        <table id="contentTable">
                            <tr class="contentTableHeaders">
                                <th colspan="2" style="text-align: left; border-bottom: thick;">ENGINE</th>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Engine Layout</td>
                                <td style="text-align: right;"><asp:Label ID="car_e_layout" runat="server" Text="NONE"></asp:Label></td>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Horsepower</td>
                                <td style="text-align: right;"><asp:Label ID="car_horsepower" runat="server" Text="0"></asp:Label> &nbsp hp</td>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">@rpm</td>
                                <td style="text-align: right;"><asp:Label ID="car_rpm" runat="server" Text="0"></asp:Label> &nbsp rpm</td>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Torque</td>
                                <td style="text-align: right;"><asp:Label ID="car_torque" runat="server" Text="0"></asp:Label> &nbsp lb-ft</td>
                            </tr>
                        </table>
                    </div>

                    <div class="contentPanel" id="contentPanelPanel" style="top: 5px;">
                        <table id="contentTable">
                            <tr class="contentTableHeaders">
                                <th colspan="2" style="text-align: left; border-bottom: thick;">BODY</th>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Length</td>
                                <td style="text-align: right;"><asp:Label ID="car_len" runat="server" Text="0"></asp:Label></td>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Width</td>
                                <td style="text-align: right;"><asp:Label ID="car_wid" runat="server" Text="0"></asp:Label> &nbsp in</td>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Height</td>
                                <td style="text-align: right;"><asp:Label ID="car_hgt" runat="server" Text="0"></asp:Label> &nbsp in</td>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Wheelbase</td>
                                <td style="text-align: right;"><asp:Label ID="car_wbase" runat="server" Text="0"></asp:Label> &nbsp in</td>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Gross Weight</td>
                                <td style="text-align: right;"><asp:Label ID="car_wt" runat="server" Text="0"></asp:Label> &nbsp lbs</td>
                            </tr>
                        </table>
                    </div>

                </div></td>
                    
                <td><div id="contentColumn" style="height: 380px;">

                    <div class="contentPanel" id="contentPanelPanel" style="top: 1px; height: 120px;">
                        <table id="contentTable">
                            <tr class="contentTableHeaders">
                                <th colspan="2" style="text-align: left; border-bottom: thick;">PERFORMANCE</th>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Top Speed</td>
                                <td style="text-align: right;"><asp:Label ID="car_tpspd" runat="server" Text="0"> &nbsp mph</asp:Label></td>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Acceration (0-60 mph)</td>
                                <td style="text-align: right;"><asp:Label ID="car_accel" runat="server" Text="0"></asp:Label> &nbsp sec</td>
                            </tr>
                        </table>
                    </div>

                    <div class="contentPanel" id="contentPanelPanel" style="top: 7px; height: 132px;">
                        <table id="contentTable">
                            <tr class="contentTableHeaders">
                                <th colspan="2" style="text-align: left; border-bottom: thick;">FUEL CONSUMPTION</th>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">City</td>
                                <td style="text-align: right;"><asp:Label ID="car_mcity" runat="server" Text="0"> &nbsp mpg</asp:Label></td>
                            </tr>
                            <tr class="contentTableRows">
                                <td style="text-align: left;">Highway</td>
                                <td style="text-align: right;"><asp:Label ID="car_mhighway" runat="server" Text="0"></asp:Label> &nbsp mpg</td>
                            </tr>
                        </table>
                    </div>

                    <div class="contentPanel" id="contentPanelPanel" style="top: 12px; height: 45px; background-color: #FF1744;">
                        <table id="contentTable">
                            <tr class="contentTableHeaders">
                                <th colspan="1" style="text-align: left; border-bottom: thick;">PRICE</th>
                                <td style="text-align: right;"><asp:Label ID="car_price" runat="server" Text="0"></asp:Label> &nbsp USD</td>
                            </tr>
                        </table>
                    </div>

                </div></td>
            </table>

            <div id="divPurchase">
                <asp:Button ID="Orderbutton" runat="server" CssClass="purchaseButton" Text="PURCHASE" OnClick="Orderbutton_Click"></asp:Button>
            </div>

        </div>

        <br />

    </form>

    <script src="Resources/jQuery.js"></script>
    <script src="Resources/jQueryUI.js"></script>
    <script src="Resources/secondPageTransitions.js"></script>
    <script src="Resources/imageExtractor.js"></script>
</body>
</html>
