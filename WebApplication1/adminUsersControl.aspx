<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminUsersControl.aspx.cs" Inherits="WebApplication1.adminUsersControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script type="text/javascript">
		$(document).ready(function () {

			$('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();				
		} );
	</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<br />
	<br />
	<br />
	<div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card bg-light mb-3">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h3>Vartotojų redagavimas bei naikinimas</h3>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
										<img width="250px" src="imgs/userManagement.png" />
                                 </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6 mx-auto">
									<div class="form-group">
										<div class="input-group">						
											<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Vartotojo prisijungimas" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
											<asp:Button ID="Button3" runat="server" Text="Surasti pagal ID" BackColor="#FF9900" OnClick="Button3_Click" />
										</div>
									</div>
                            </div>
                        </div>

						<div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

						<div class="row">
                            <div class="col">
                                <center>
                                        <h3>Vartotojo sukūrimas</h3>
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
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Vardas"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Pavardė</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Pavardė"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Kontaktinis numeris</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Numeris" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Elektroninis paštas</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
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
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Unikalus vardas"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Slaptažodis</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Slaptažodis" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                        <div class="row">			
							<div class="col-4 mx-auto">
								<center>
									<div class="form-group">
										<asp:Button class="btn btn-danger btn-block btn-lg" ID="Button2" runat="server" Text="Pašalinti" OnClick="Button2_Click" />									 
									</div>
								</center>
							</div>
							<div class="col-4 mx-auto">
								<center>
									<div class="form-group">
										<asp:Button class="btn btn-warning btn-block btn-lg" ID="Button1" runat="server" Text="Redaguoti Vartotoją" OnClick="Button1_Click" />									 
									</div>
								</center>
							</div>

							<div class="col-4 mx-auto">
								<center>
									<div class="form-group">
										<asp:Button class="btn btn-success btn-block btn-lg" ID="Button4" runat="server" Text="Sukurti Vartotoją" OnClick="Button4_Click" />					 
									</div>
								</center>
							</div>
						</div>
                    </div>
                </div>
                <a href="HomePage.aspx"><< Grįžti į pagrindinį puslapį</a><br>
                <br>
            </div>
 
            <div class="col-md-7">
 
                <div class="card bg-light mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
									<center>
                                        <h4>Visų vartotojų sąrašas</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [member_info_table]"></asp:SqlDataSource>

                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
									<Columns>
										<asp:BoundField DataField="member_name" HeaderText="Vardas" SortExpression="member_name" />
										<asp:BoundField DataField="member_lastName" HeaderText="Pavardė" SortExpression="member_lastName" />
										<asp:BoundField DataField="member_nr" HeaderText="Numeris" SortExpression="member_nr" />
										<asp:BoundField DataField="member_email" HeaderText="Paštas" SortExpression="member_email" />
										<asp:BoundField DataField="member_gender" HeaderText="Lytis" SortExpression="member_gender" />
										<asp:BoundField DataField="member_pass" HeaderText="Slaptažodis" SortExpression="member_pass" >
										</asp:BoundField>
										<asp:BoundField DataField="member_id" HeaderText="ID" SortExpression="member_id" ReadOnly="True" />
										<asp:BoundField DataField="member_uName" HeaderText="Prisijungimas" SortExpression="member_uName" >
										<HeaderStyle BackColor="#FF5050" />
										</asp:BoundField>
									</Columns>
								</asp:GridView>
                            </div>
                        </div>
 
 
                    </div>
                </div>
 
 
            </div>
 
        </div>
    </div>

</asp:Content>
