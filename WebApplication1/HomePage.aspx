<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication1.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
<br />
	<section>
		<center>
		<img src="imgs/covercover.jpg" class="img-thumbnail" width="1000" height="280" />
			</center>
	</section>

	<section>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<center>
						<h2>Programėlės funkcionalumas</h2>
						<br />
					</center>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<br />
					<center>
					<img width="160px" src="imgs/sssss.png" />
					<h4>Greitas Prekių Radimas</h4>
					<p class="text-justify">Šioje programėlėje galite pasirinkti norimas prekes</p>
					</center>
				</div>
				<div class="col-md-4">
					<center>
					<img width="150px" src="imgs/location.png" />
					<h4>Prekių vieta</h4>
					<p class="text-justify">Yra atvaizduojamas parduotuvės išplanavimas, kuriame bus pažymėtos Jūsų pasirinktos prekės</p>
					</center>
				</div>
				<div class="col-md-4">
					<center>
					<img width="150px" src="imgs/savetime.png" />
					<h4>Sutaupykite laiko</h4>
					<p class="text-justify">Matydami savo pasirinktas prekes, Jūs sutaupote daug brangaus laiko</p>
					</center>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<br />
					<center>
						<asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="Atsisiųsti aplikaciją" OnClick="Button1_Click" />					
					</center>
					<br />
					<br />
				</div>

			</div>

		</div>

	</section>

<!--
	<section>
		<center>
			<img src="imgs/cover2.jpg" class="img-thumbnail" width="1050" height="600" />
		</center>
	</section>



	<section>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<center>
						<h2>Programėlės funkcionalumas</h2>
					</center>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<center>
					<img width="150px" src="imgs/sssss.png" />
					<h4>Greitas Prekių Radimas</h4>
					<p class="text-justify">Šioje programėlėje galite pasirinkti norimas prekes</p>
					</center>
				</div>
				<div class="col-md-4">
					<center>
					<img width="150px" src="imgs/location.png" />
					<h4>Prekių vieta</h4>
					<p class="text-justify">Programėlėje atvaizduojamas parduotuvės išplanavimas, kuriame bus pažymėtos Jūsų pasirinktos prekės</p>
					</center>
				</div>
				<div class="col-md-4">
					<center>
					<img width="150px" src="imgs/savetime.png" />
					<h4>Sutaupykite laiko</h4>
					<p class="text-justify">Matydami pasirinktas prekes, Jūs sutaupote daug brangaus laiko</p>
					</center>
				</div>
			</div>

		</div>

	</section>
	-->



</asp:Content>
