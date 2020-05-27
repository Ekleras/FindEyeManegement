<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="WebApplication1.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<br />
	<br />
	<br />
	<div class="container">

		<div class="row">
			<div class="col-md-6 mx-auto">
				<div class="card">
					<div class="card-body">

						<div class="row">
							<div class="col">
								<center>
									<img width="150px" src="imgs/adminIcon.png" />
								</center>
							</div>
						</div>

						<div class="row">
							<div class="col">
								<center>
									<h3>Administratorius</h3>
								</center>
							</div>
						</div>

						<div class="row">
							<div class="col">
								<div class="form-group">
									<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Vartotojo ID"></asp:TextBox>
								</div>

								<div class="form-group">
									<asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Slaptažodis"></asp:TextBox>
								</div>
								<div class="form-group">
									
										<asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="Prisijungti" OnClick="Button1_Click" />
									
								</div>
							</div>
						</div>


						
					</div>
				</div>
				<a href="HomePage.aspx"><< Grįžti atgal</a>
				<br />
				<br />
			</div>

		</div>

	</div>

</asp:Content>
