<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userRegistration.aspx.cs" Inherits="WebApplication1.userRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
<br />
<br />
	<div class="container-fluid">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card bg-light mb-3">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
							<br />
							<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
							<img width="125px" src="imgs/registr.png" />

                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Vartotojo registracija</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Vardas</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Vardas"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Pavardė</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Pavardė"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Kontaktinis numeris</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Numeris" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Elektroninis paštas</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Lytis</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Vyras" Value="Vyras" />
                              <asp:ListItem Text="Moteris" Value="Moteris" /> 
							  <asp:ListItem Text="Kita" Value="Kita" /> 
                           </asp:DropDownList>
                        </div>
                     </div>                   
                  </div>


					<div class="row">
                     <div class="col-md-6">
                        <label>Vartotojo ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Unikalus vardas"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Slaptažodis</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Slaptažodis" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  


                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Registruotis" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
			 <br />
			<a href="HomePage.aspx"><< Grįžti atgal</a>
            </div>           
         </div>		
      </div>
   </div>

</asp:Content>
