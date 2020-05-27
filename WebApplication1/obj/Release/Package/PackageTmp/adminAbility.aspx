<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAbility.aspx.cs" Inherits="WebApplication1.adminAbility" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


	<script type="text/javascript">
		$(document).ready(function () {

			$('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
		});
	</script>

	<script type="text/javascript">

		function readURL(input) {
			if (input.files && input.files[0]) {

				var read = new FileReader();
				read.onload = function (e) {
					$('#img1').attr('src', e.target.result);
				};
				read.readAsDataURL(input.files[0]);
			}
		}
	</script>

	<script>

		function rowColor(line) {
			for (var i = 0; i < line.options.length; i++) {
				if (line.options[i].selected) {
					switch (i) {
						case 0:
							line.style.backgroundColor = 'White';
							return;

						case 1:
							line.style.backgroundColor = '#E75A5A';
							return;

						case 2:
							line.style.backgroundColor = '#E7875A';
							return;

						case 3:
							line.style.backgroundColor = '#E1FA2C';
							return;

						case 4:
							line.style.backgroundColor = '#54D600';
							return;
						case 5:
							line.style.backgroundColor = '#43FFE5';
							return;
						case 6:
							line.style.backgroundColor = '#00A4DE';
							return;
						case 7:
							line.style.backgroundColor = '#356FF5';
							return;
						case 8:
							line.style.backgroundColor = '#BC65DD';
							return;
						case 9:
							line.style.backgroundColor = '#EE5684';
							return;
						case 10:
							line.style.backgroundColor = '#C1BABD';
							return;

												
					}
					window.addEventListener('load', function () { SetDropDownListColor(document.getElementById('<%= DropDownList1.ClientID %>')); }, false);
					
				}
			}

		}
	</script>

	<script>

		function rowColor2(line) {
			for (var i = 0; i < line.options.length; i++)
			{
				if (line.options[i].selected)
				{
					switch (i)
					{
						case 0:
							line.style.backgroundColor = 'White';
							return;

						case 1:
							line.style.backgroundColor = '#E75A5A';
							return;

						case 2:
							line.style.backgroundColor = '#E75A5A';
							return;

						case 3:
							line.style.backgroundColor = '#E75A5A';
							return;

						case 4:
							line.style.backgroundColor = '#E75A5A';
							return;
						case 5:
							line.style.backgroundColor = '#E75A5A';
							return;
						case 6:
							line.style.backgroundColor = '#E75A5A';
							return;
						case 7:
							line.style.backgroundColor = '#E75A5A';
							return;
						case 8:
							line.style.backgroundColor = '#E75A5A';
							return;
						case 9:
							line.style.backgroundColor = '#E75A5A';
							return;
						case 10:
							line.style.backgroundColor = '#E75A5A';
							return;
						case 11:
							line.style.backgroundColor = '#E75A5A';
							return;
					//********************************************************************************
						case 12:
							line.style.backgroundColor = '#E7875A';
							return;
						case 13:
							line.style.backgroundColor = '#E7875A';
							return;
						case 14:
							line.style.backgroundColor = '#E7875A';
							return;

					//********************************************************************************
						case 15:
							line.style.backgroundColor = '#E1FA2C';
							return;
						case 16:
							line.style.backgroundColor = '#E1FA2C';
							return;
						case 17:
							line.style.backgroundColor = '#E1FA2C';
							return;
						case 18:
							line.style.backgroundColor = '#E1FA2C';
							return;
						case 19:
							line.style.backgroundColor = '#E1FA2C';
							return;
						case 20:
							line.style.backgroundColor = '#E1FA2C';
							return;

					//********************************************************************************
						case 21:
							line.style.backgroundColor = '#54D600';
							return;
						case 22:
							line.style.backgroundColor = '#54D600';
							return;
						case 23:
							line.style.backgroundColor = '#54D600';
							return;
						case 24:
							line.style.backgroundColor = '#54D600';
							return;
						case 25:
							line.style.backgroundColor = '#54D600';
							return;
						case 26:
							line.style.backgroundColor = '#54D600';
							return;
						case 27:
							line.style.backgroundColor = '#54D600';
							return;
						case 28:
							line.style.backgroundColor = '#54D600';
							return;
						case 29:
							line.style.backgroundColor = '#54D600';
							return;							
					//********************************************************************************
						case 30:
							line.style.backgroundColor = '#43FFE5';
							return;
						case 31:
							line.style.backgroundColor = '#43FFE5';
							return;
						case 32:
							line.style.backgroundColor = '#43FFE5';
							return;
						case 33:
							line.style.backgroundColor = '#43FFE5';
							return;
					//********************************************************************************
						case 34:
							line.style.backgroundColor = '#00A4DE';
							return;
						case 35:
							line.style.backgroundColor = '#00A4DE';
							return;
						case 36:
							line.style.backgroundColor = '#00A4DE';
							return;
						case 37:
							line.style.backgroundColor = '#00A4DE';
							return;
						//********************************************************************************
						case 38:
							line.style.backgroundColor = '#356FF5';
							return;
						case 39:
							line.style.backgroundColor = '#356FF5';
							return;
						case 40:
							line.style.backgroundColor = '#356FF5';
							return;
						case 41:
							line.style.backgroundColor = '#356FF5';
							return;
						case 42:
							line.style.backgroundColor = '#356FF5';
							return;
						case 43:
							line.style.backgroundColor = '#356FF5';
							return;
						//********************************************************************************
						case 44:
							line.style.backgroundColor = '#BC65DD';
							return;
						case 45:
							line.style.backgroundColor = '#BC65DD';
							return;
						case 46:
							line.style.backgroundColor = '#BC65DD';
							return;
						case 47:
							line.style.backgroundColor = '#BC65DD';
							return;
						//********************************************************************************
						case 48:
							line.style.backgroundColor = '#EE5684';
							return;
						case 49:
							line.style.backgroundColor = '#EE5684';
							return;
						case 50:
							line.style.backgroundColor = '#EE5684';
							return;
						case 51:
							line.style.backgroundColor = '#EE5684';
							return;
						case 52:
							line.style.backgroundColor = '#EE5684';
							return;
						case 53:
							line.style.backgroundColor = '#EE5684';
							return;
						case 54:
							line.style.backgroundColor = '#EE5684';
							return;
						case 55:
							line.style.backgroundColor = '#EE5684';
							return;
						case 56:
							line.style.backgroundColor = '#EE5684';
							return;
						case 57:
							line.style.backgroundColor = '#EE5684';
							return;
					//********************************************************************************
						case 58:
							line.style.backgroundColor = '#C1BABD';
							return;
						case 59:
							line.style.backgroundColor = '#C1BABD';
							return;
						case 60:
							line.style.backgroundColor = '#C1BABD';
							return;
						case 61:
							line.style.backgroundColor = '#C1BABD';
							return;
						case 62:
							line.style.backgroundColor = '#C1BABD';
							return;
						case 63:
							line.style.backgroundColor = '#C1BABD';
							return;


					}
					window.addEventListener('load', function () { SetDropDownListColor(document.getElementById('<%= DropDownList4.ClientID %>')); }, false);

				}
			}

		}
	</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<br />
	<br />
	<br />
	<div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
 
                <div class="card bg-light mb-3">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Prekės informacija</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
										<img id="img1" width="120px" src="products_inv/adminWriting.png" />  
                                 </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

						<div class="row">
                            <div class="col">
								<asp:FileUpload onchange="readURL(this);" CssClass="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
						<br />
 
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
										<asp:Button ID="Button1" runat="server" Text="Surasti pagal ID" OnClick="Button1_Click" BackColor="#FFCC00" />
                                    </div>
                                </div>
                            </div>

							<div class="col-md-3">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Lentynos numeris"></asp:TextBox>
                                </div>
                            </div>
 
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Prekės pavadinimas"></asp:TextBox>
                                </div>
                            </div>
                        </div>

						<div class="row">
							<div class="col-md-6">
								<label>Kategorija</label>
								<div class="form-group">
									<asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" onchange="rowColor(this);">
										<asp:ListItem Text="" Value="" style="background-color: White !important;" />
										<asp:ListItem Text="Maistas" Value="Maistas" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Kosmetika ir higiena" Value="Kosmetika ir higiena" style="background-color: #E7875A !important;" />
										<asp:ListItem Text="Kūdikių ir vaikų prekės" Value="Kūdikių ir vaikų prekės" style="background-color: #E1FA2C !important;" />
										<asp:ListItem Text="Buitinė chemija" Value="Buitinė chemija" style="background-color: #54D600 !important;" />
										<asp:ListItem Text="Automobilių prekės" Value="Automobilių prekės" style="background-color: #43FFE5 !important;" />
										<asp:ListItem Text="Gyvūnų prekės" Value="Gyvūnų prekės" style="background-color: #00A4DE !important;" />
										<asp:ListItem Text="Kanceliarijos reikmenys" Value="Kanceliarijos reikmenys" style="background-color: #356FF5 !important;" />
										<asp:ListItem Text="Spauda" Value="Spauda" style="background-color: #BC65DD !important;" />
										<asp:ListItem Text="Pramonės prekės" Value="Pramonės prekės" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Sporto prekės" Value="Sporto prekės" style="background-color: #C1BABD !important;" />
									</asp:DropDownList>
								</div>
							</div>
							
						</div>

						<div class="row">
							<div class="col-md-9">
									<label>Prekės pokategorė</label>
									<div class="form-group">
										<asp:DropDownList CssClass="form-control" ID="DropDownList4"  runat="server" onchange="rowColor2(this);">
										<asp:ListItem Text="" Value="" style="background-color: White !important;" />
										<asp:ListItem Text="Vaisiai" Value="Vaisiai" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Daržovės" Value="Daržovės" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Pieno produktai" Value="Pieno produktai" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Duonos gaminiai" Value="Duonos gaminiai" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Konditerija" Value="Konditerija" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Mėsa" Value="Mėsa" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Žuvis" Value="Žuvis" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Šaldytas maistas" Value="Šaldytas maistas" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Plikomi gėrimai" Value="Plikomi gėrimai" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Gėrimai" Value="Gėrimai" style="background-color: #E75A5A !important;" />
										<asp:ListItem Text="Saldainiai" Value="Saldainiai" style="background-color: #E75A5A !important;" />

										<asp:ListItem Text="Burnos higienos piemonės" Value="Burnos higienos piemonės" style="background-color: #E7875A !important;" />
										<asp:ListItem Text="Kūno priežiūros priemonės" Value="Kūno priežiūros priemonės" style="background-color: #E7875A !important;" />
										<asp:ListItem Text="Skutimosi reikmenys" Value="Skutimosi reikmenys" style="background-color: #E7875A !important;" />

										<asp:ListItem Text="Pieno mišiniai" Value="Pieno mišiniai" style="background-color: #E1FA2C !important;" />
										<asp:ListItem Text="Košės" Value="Košės" style="background-color: #E1FA2C !important;" />
										<asp:ListItem Text="Sauskelnės" Value="Sauskelnės" style="background-color: #E1FA2C !important;" />
										<asp:ListItem Text="Higienos priemonės" Value="Higienos priemonės" style="background-color: #E1FA2C !important;" />
										<asp:ListItem Text="Žaislai" Value="Žaislai" style="background-color: #E1FA2C !important;" />
										<asp:ListItem Text="Drabužiai" Value="Drabužiai" style="background-color: #E1FA2C !important;" />


										<asp:ListItem Text="Skalbimo priemonės" Value="Skalbimo priemonės" style="background-color: #54D600 !important;" />
										<asp:ListItem Text="Indų plovikliai" Value="Indų plovikliai" style="background-color: #54D600 !important;" />
										<asp:ListItem Text="Priemonės indaplovėms" Value="Priemonės indaplovėms" style="background-color: #54D600 !important;" />
										<asp:ListItem Text="Parazitų naikinimo priemonės" Value="Parazitų naikinimo priemonės" style="background-color: #54D600 !important;" />
										<asp:ListItem Text="Tuoleto priemonės" Value="Tuoleto priemonės" style="background-color: #54D600 !important;" />
										<asp:ListItem Text="Vamzdžių valikliai" Value="Vamzdžių valikliai" style="background-color: #54D600 !important;" />
										<asp:ListItem Text="Langų valikliai" Value="Langų valikliai" style="background-color: #54D600 !important;" />
										<asp:ListItem Text="Grindų valikliai" Value="Grindų valikliai" style="background-color: #54D600 !important;" />
										<asp:ListItem Text="Kempinės" Value="Kempinės" style="background-color: #54D600 !important;" />


										<asp:ListItem Text="Valytuvai" Value="Valytuvai" style="background-color: #43FFE5 !important;" />
										<asp:ListItem Text="Automobilių švaros prekės" Value="Automobilių švaros prekės" style="background-color: #43FFE5 !important;" />
										<asp:ListItem Text="Oro gaivikliai" Value="Oro gaivikliai" style="background-color: #43FFE5 !important;" />
										<asp:ListItem Text="Skysčiai" Value="Skysčiai" style="background-color: #43FFE5 !important;" />


										<asp:ListItem Text="Sausas ėdalas" Value="Sausas ėdalas" style="background-color: #00A4DE !important;" />
										<asp:ListItem Text="Skanėstai" Value="Skanėstai" style="background-color: #00A4DE !important;" />
										<asp:ListItem Text="Konservuotas ėdalas" Value="Konservuotas ėdalas" style="background-color: #00A4DE !important;" />
										<asp:ListItem Text="Gyvūnų kraikas" Value="Gyvūnų kraikas" style="background-color: #00A4DE !important;" />


										<asp:ListItem Text="Piešimo reikmenys" Value="Piešimo reikmenys" style="background-color: #356FF5 !important;" />
										<asp:ListItem Text="Rašymo priemonės" Value="Rašymo priemonės" style="background-color: #356FF5 !important;" />
										<asp:ListItem Text="Popierius" Value="Popierius" style="background-color: #356FF5 !important;" />
										<asp:ListItem Text="Lipnios juostelės" Value="Lipnios juostelės" style="background-color: #356FF5 !important;" />
										<asp:ListItem Text="Dovanų popierius" Value="Dovanų popierius" style="background-color: #356FF5 !important;" />
										<asp:ListItem Text="Mokyklinės prekės" Value="Mokyklinės prekės" style="background-color: #356FF5 !important;" />


										<asp:ListItem Text="Žurnalai ir laikraščiai" Value="Žurnalai ir laikraščiai" style="background-color: #BC65DD !important;" />
										<asp:ListItem Text="Populiarioji literatūra" Value="Populiarioji literatūra" style="background-color: #BC65DD !important;" />
										<asp:ListItem Text="Literatūra vaikams" Value="Literatūra vaikams" style="background-color: #BC65DD !important;" />
										<asp:ListItem Text="Atvirutės" Value="Atvirutės" style="background-color: #BC65DD !important;" />


										<asp:ListItem Text="Šluostės, kempinėlės ir šepečiai" Value="Šluostės, kempinėlės ir šepečiai" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Šiukšlių maišai" Value="Šiukšlių maišai" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Aprangos priežiūros reikmenys" Value="Aprangos priežiūros reikmenys" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Kapų žvakės" Value="Kapų žvakės" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Antklodės, pagalvės" Value="Antklodės, pagalvės" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Apranga" Value="Apranga" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Avalynė" Value="Avalynė" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Kelioniniai krepšiai" Value="Kelioniniai krepšiai" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Serviravimo indai" Value="Serviravimo indai" style="background-color: #EE5684 !important;" />
										<asp:ListItem Text="Elektronika" Value="Elektronika" style="background-color: #EE5684 !important;" />


										<asp:ListItem Text="Maisto papildai" Value="Maisto papildai" style="background-color: #C1BABD !important;" />
										<asp:ListItem Text="Gertuvės" Value="Gertuvės" style="background-color: #C1BABD !important;" />
										<asp:ListItem Text="Svarmenys" Value="Svarmenys" style="background-color: #C1BABD !important;" />
										<asp:ListItem Text="Kamuoliai" Value="Kamuoliai" style="background-color: #C1BABD !important;" />
										<asp:ListItem Text="Raketės" Value="Raketės" style="background-color: #C1BABD !important;" />
										<asp:ListItem Text="Sporto kilimėliai" Value="Sporto kilimėliai" style="background-color: #C1BABD !important;" />

									</asp:DropDownList>
									</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-5">
								<label>Kainos tipas</label>
								<div class="form-group">
									<asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
										<asp:ListItem Text="Vienetas" Value="Vienetas" />
										<asp:ListItem Text="Kilogramas" Value="Kilogramas" />										
									</asp:DropDownList>
								</div>
							</div>

							<div class="col-md-6">
								<label>Prekės kaina</label>
								<div class="form-group">
									 <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Kaina"></asp:TextBox>
								</div>
							</div>
						</div>
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Pridėti" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Atnaujinti" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Pašalinti" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="HomePage.aspx"><< Grįžti į pagrindinį puslapį</a><br>
                <br>
            </div>
 
            <div class="col-md-6">
 
                <div class="card bg-light mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
									<center>
                                        <h4>Esamų prekių sąrašas</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:parduotuvesDBConnectionString %>" SelectCommand="SELECT * FROM [preke_table]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="prekes_id" DataSourceID="SqlDataSource1">
									<Columns>
										<asp:BoundField DataField="prekes_id" HeaderText="Prekės ID" ReadOnly="True" SortExpression="prekes_id" />										
									
										
										<asp:TemplateField>

											<ItemTemplate>
												<div class ="container-fluid">
													<div class="row">

														<div class="col-lg-9">
															<div class="row">
																<div class="col-12">
																	<asp:Label ID="Label1" runat="server" Text='<%# Eval("prekes_pav") %>' Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large"></asp:Label>
																	
																</div>
															</div>

															<div class="row">
																<div class="col-12">
																	<br />
																</div>
															</div>

															<div class="row">
																<div class="col-12">
																	<asp:Label ID="Label2" runat="server" Text="Lentynos numeris:   " Font-Bold="True"></asp:Label>
																	<asp:Label ID="Label3" runat="server" Text='<%# Eval("lentynos_nr", "{0}") %>'></asp:Label>
																</div>
															</div
																>
															<div class="row">

															</div>

															<div class="row">
																<div class="col-12">
																	<asp:Label ID="Label4" runat="server" Text="Kategorija:  " Font-Bold="True"></asp:Label>
																	<asp:Label ID="Label5" runat="server" Text='<%# Eval("prekes_kate") %>'></asp:Label>
																</div>	
															</div>

															<div class="row">
																<div class="col-12">
																	<asp:Label ID="Label6" runat="server" Text="Subkategorija: " Font-Bold="True"></asp:Label>
																	<asp:Label ID="Label7" runat="server" Text='<%# Eval("prekes_pokate") %>'></asp:Label>
																</div>
															</div>

															<div class="row">
																<div class="col-3">
																	<asp:Label ID="Label8" runat="server" Text="Kaina: " Font-Bold="True"></asp:Label>
																	<asp:Label ID="Label9" runat="server" Text='<%# Eval("prekes_kaina") %>  ' Font-Bold="True"></asp:Label>
																	<asp:Label ID="Label10" runat="server" Text="€" Font-Bold="True"></asp:Label>

																</div>

																<div class="col-9">
																	<asp:Label ID="Label11" runat="server" Text='<%# Eval("prekes_kainosTipas") %>' Font-Bold="True"></asp:Label>
																</div>
															</div>

														</div>

														<div class="col-lg-3">
															<asp:Image CssClass="img-fluid p-0" width="200px" ID="Image1" runat="server" ImageUrl='<%# Eval("prekes_img") %>' />
														</div>

													</div>
												</div>
											</ItemTemplate>

										</asp:TemplateField>
									
										
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
