<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="studentReg.aspx.cs" Inherits="MINIPROJECT.Admin.studentReg" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="box-header with-border">
        <h3 class="box-title">Student Registration Form</h3>
    </div><!-- /.box-header -->
    <div class="box-body">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <table style="width: 100%; border: 0; padding: 0" >
                        <tr>
                            <th colspan="3">
                                Personal Info 
                            </th>
                        </tr>
                        <tr>
                            <td> <asp:Label ID="LabelStudentName" runat="server" Text="Student Name :"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxStudentName" runat="server" Width="100%"></asp:TextBox> </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredStudentName" ControlToValidate="TextBoxStudentName" runat="server" ErrorMessage="Name Required"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td> <asp:Label ID="LabelMatricNo" runat="server" Text="Matric No :"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxMatricNo" runat="server" Width="100%"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredMatricNo" ControlToValidate="TextBoxMatricNo" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="LabelPhoneNo" runat="server" Text="Phone Number :"></asp:Label></td>
                            <td> <asp:TextBox ID="TextBoxPhoneNo" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="LabelEmail" runat="server" Text="Email :"></asp:Label></td>
                            <td> <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="LabelStudentIC" runat="server" Text="Student IC :"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxStudentIC" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td> <asp:Label ID="LabelAddress" runat="server" Text="Address :"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="LabelDateOfBirth" runat="server" Text="Date Of Birth :"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxDateOfBirth" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="LabelGender" runat="server" Text="Gender :"></asp:Label></td>
                            <td>
                                <asp:RadioButton ID="RadioButton1" Checked="true" GroupName="gender" Text="Male" runat="server" />
                                <asp:RadioButton ID="RadioButton2" Text="Female" GroupName="gender" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="LabelRace" runat="server" Text="Race :"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxRace" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="LabelNationality" runat="server" Text="Nationality :"></asp:Label></td>
                            <td> <asp:TextBox ID="TextBoxNationality" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <table style="border-style: none; border-color: inherit; border-width: 0; padding: 0;" class="nav-justified" >
                        <tr>
                            <th colspan="3">
                                Contact Person 
                            </th>
                        </tr>
                        <tr>
                            <td style="height: 22px"><asp:Label ID="LabelGuardianName" runat="server" Text="Guardian Name "></asp:Label></td>
                            <td style="height: 22px"><asp:TextBox ID="TextBoxGuardianName" runat="server"></asp:TextBox></td>
                            <td style="height: 22px"></td>
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
                            <td><asp:Label ID="LabelGuardianAddress" runat="server" Text="Address "></asp:Label></td>
                            <td><asp:TextBox ID="TextGuardianAddress" runat="server"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Button ID="Button1" runat="server" Text="Register" Width="223px" OnClick="registerStudent" />
                            </td>
                        </tr>
                    </table>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
