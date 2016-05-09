<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="studentReg.aspx.cs" Inherits="MINIPROJECT.Admin.studentReg" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="box-header with-border">
        <h3 class="box-title">Student Registration Form</h3>
    </div><!-- /.box-header -->
    <div class="box-body">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <ajaxToolkit:TabContainer ID="TabContainer1"  runat="server" Height="600px"  ActiveTabIndex="0" Width="450px">
            <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
                <HeaderTemplate>
                    Personal Info
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Label ID="LabelStudentName" runat="server" Text="Student Name :"></asp:Label>
                    <asp:TextBox ID="TextBoxStudentName" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="LabelMatricNo" runat="server" Text="Matric No :"></asp:Label>
                    <asp:TextBox ID="TextBoxMatricNo" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="LabelPhoneNo" runat="server" Text="Phone Number :"></asp:Label>
                    <asp:TextBox ID="TextBoxPhoneNo" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="LabelEmail" runat="server" Text="Email :"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="LabelStudentIC" runat="server" Text="Student IC :"></asp:Label>
                    <asp:TextBox ID="TextBoxStudentIC" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="LabelAddress" runat="server" Text="Address :"></asp:Label>
                    <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="LabelDateOfBirth" runat="server" Text="Date Of Birth :"></asp:Label>
                    <asp:TextBox ID="TextBoxDateOfBirth" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="LabelGender" runat="server" Text="Gender :"></asp:Label>
                    <asp:TextBox ID="TextBoxGender" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="LabelRace" runat="server" Text="Race :"></asp:Label>
                    <asp:TextBox ID="TextBoxRace" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="LabelNationality" runat="server" Text="Nationality :"></asp:Label>
                    <asp:TextBox ID="TextBoxNationality" runat="server"></asp:TextBox>
                    <br />

                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                <HeaderTemplate>
                    Contact Person
                </HeaderTemplate>
                <ContentTemplate>
                    <table style="width: 100%; border: 0; padding: 0" >
                        <tr>
                            <td><asp:Label ID="LabelGuardianName" runat="server" Text="Guardian Name "></asp:Label></td>
                            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                     
                        <tr>
                            <td><asp:Label ID="LabelOccupation" runat="server" Text="Occupation      "></asp:Label></td>
                            <td> <asp:TextBox ID="TextBoxOccupation" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                       
                        <tr>
                            <td>  <asp:Label ID="LabelGuardianPhoneNo" runat="server" Text="Phone No "></asp:Label></td>
                            <td> <asp:TextBox ID="TextBoxGuardianPhoneNo" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                       
                         <tr>
                            <td>   <asp:Label ID="LabelSalary" runat="server" Text="Salary "></asp:Label></td>
                            <td> <asp:TextBox ID="TextBoxSalary" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                        
                         <tr>
                            <td>  <asp:Label ID="LabelGuardianAddress" runat="server" Text="Address "></asp:Label></td>
                            <td> <asp:TextBox ID="TextGuardianAddress" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                   
                    </table>
                    
                   
                   
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
    </div>
</asp:Content>
