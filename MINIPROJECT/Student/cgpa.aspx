<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Student/StudentMasterPage.Master" CodeBehind ="cgpa.aspx.cs" Inherits="MINIPROJECT.Student.cgpa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

	<style>
		.container
		{
			text-align:center;
		}
		.header-center{
			text-align:center;
		}
		.padding{
			padding:10px;
		}
	</style>
	<section class="content-header">
			  <h1>
				Course
				<small>Result</small>
			  </h1>
			  <ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
				<li class="active">Result</li>
			  </ol>
			</section>
			<section class="content" >
		<div class="row">
			 <div class="box-body" >
			 <asp:Table runat="server" CssClass="table" HorizontalAlign="center">
				 <asp:TableRow>
					 <asp:TableCell CssClass="col-md-3">
						 <div class="container">
						 <asp:DropDownList Width="25%" Height="30px" ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
							 <asp:ListItem Text="Choose year and semester"></asp:ListItem>
						 </asp:DropDownList>
						 </div>                    
					 </asp:TableCell>
				 </asp:TableRow>
			 </asp:Table>
			<br/> <br/>
			<asp:GridView CssClass="table table-bordered table-hover"  ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="false">
				 <Columns>
			<asp:TemplateField HeaderText="Course Code" HeaderStyle-CssClass="header-center">
				<ItemTemplate>
					<asp:Label ID="courseCodeLbl" runat="server" Text='<%# Eval("courseCode") %>'></asp:Label>
				</ItemTemplate>
				<ItemStyle Width="10%"></ItemStyle>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Course ID" HeaderStyle-CssClass="header-center">
				<ItemTemplate>
					<asp:Label ID="courseIDLbl" runat="server" Text='<%# Eval("courseID") %>'></asp:Label>
				</ItemTemplate>
				<ItemStyle Width="10%"></ItemStyle>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Course Name" HeaderStyle-CssClass="header-center">
				<ItemTemplate>
					<asp:Label ID="courseNameLbl" runat="server" Text='<%# Eval("courseName") %>'></asp:Label>
				</ItemTemplate>
				<ItemStyle Width="40%"></ItemStyle>
			</asp:TemplateField>                    
			<asp:TemplateField HeaderText="Credit Hour" HeaderStyle-CssClass="header-center">
				<ItemTemplate>
					<asp:Label ID="creditHourLbl" runat="server" Text='<%# Eval("creditHours") %>'></asp:Label>
				</ItemTemplate>
				<ItemStyle Width="15%"></ItemStyle>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Grade" HeaderStyle-CssClass="header-center">
				<ItemTemplate>
					<asp:Label ID="gradeLbl" runat="server" Text='<%# Eval("grade") %>'></asp:Label>
				</ItemTemplate>
				<ItemStyle Width="20%"></ItemStyle>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Pointer" HeaderStyle-CssClass="header-center">
				<ItemTemplate>                 
					<asp:Label ID="pointerLbl" runat="server" Text='<%# getPointer(Eval("pointer")) %>'></asp:Label>
				</ItemTemplate>
				<ItemStyle Width="20%"></ItemStyle>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Total_Pointer" HeaderStyle-CssClass="header-center">
				<ItemTemplate>
					<asp:Label ID="total_pointerLbl" runat="server" Text='<%# getToTalPointer(getPointer(Eval("pointer")), Eval("total_pointer")) %>'></asp:Label>
				</ItemTemplate>
				<ItemStyle Width="20%"></ItemStyle>
			</asp:TemplateField>
			  </Columns>
				<RowStyle HorizontalAlign="Center" Height="30px" />
			</asp:GridView>
				 <br />
					
				 <%  double total = 0;
					 double total1 = 0;
					 double gpa = 0;
					 foreach (GridViewRow row in GridView1.Rows)
					 {
						 var numberLabel = row.FindControl("creditHourLbl") as Label;
						 int number;
						 if (int.TryParse(numberLabel.Text, out number))
						 {
							 total += number;
						 }
					 }
					 Label1.Text += total.ToString();

					 foreach (GridViewRow row in GridView1.Rows)
					 {
						 var numberLabel2 = row.FindControl("total_pointerLbl") as Label;
						 int number1;
						 if (int.TryParse(numberLabel2.Text, out number1))
						 {
							 total1 += number1;
						 }
					 }
					 Label2.Text += total1.ToString();

					 gpa = total1 / total;

					 Label3.Text += gpa.ToString();
				  %>
				 <asp:Label ID="Label1" runat="server" Text="Total credit hours: " Visible="False"></asp:Label>
				 <br />				 
				 <asp:Label ID="Label2" runat="server" Text="Total pointer: " Visible="False"></asp:Label>	
				 <br />				 
				 <asp:Label ID="Label3" runat="server" Text="GPA: " Visible="False"></asp:Label>			 					 				 
			</div>
		 </div>
	   </section>
</asp:Content>
