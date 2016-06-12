<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="studentReg.aspx.cs" Inherits="MINIPROJECT.Admin.studentReg" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
<style>
   /*Calendar Control CSS*/
    .cal_Theme1 .ajax__calendar_container   {
    background-color: #DEF1F4;
    border:solid 1px #77D5F7;
    }

    .cal_Theme1 .ajax__calendar_header  {
    background-color: #ffffff;
    margin-bottom: 4px;
    }

    .cal_Theme1 .ajax__calendar_title,
    .cal_Theme1 .ajax__calendar_next,
    .cal_Theme1 .ajax__calendar_prev    {
    color: #004080;
    padding-top: 4px;
    }

    .cal_Theme1 .ajax__calendar_body    {
    background-color: #ffffff;
    border: solid 1px #77D5F7;
    }

    .cal_Theme1 .ajax__calendar_dayname {
    text-align:center;
    font-weight:bold;
    margin-bottom: 4px;
    margin-top: 2px;
    color: #004080;
    }

    .cal_Theme1 .ajax__calendar_day {
    color: #004080;
    text-align:center;
    }

    .cal_Theme1 .ajax__calendar_hover .ajax__calendar_day,
    .cal_Theme1 .ajax__calendar_hover .ajax__calendar_month,
    .cal_Theme1 .ajax__calendar_hover .ajax__calendar_year,
    .cal_Theme1 .ajax__calendar_active  {
    color: #004080;
    font-weight: bold;
    background-color: #DEF1F4;
    }

    .cal_Theme1 .ajax__calendar_today   {
    font-weight:bold;
    }

    .cal_Theme1 .ajax__calendar_other,
    .cal_Theme1 .ajax__calendar_hover .ajax__calendar_today,
    .cal_Theme1 .ajax__calendar_hover .ajax__calendar_title {
    color: #bbbbbb;
    }
    .auto-style1 {
        height: 22px;
        width: 169px;
    }
    .auto-style2 {
        width: 169px;
    }
</style>
    <div class="box-header with-border">
        <h3 class="box-title">Student Registration Form</h3>
    </div><!-- /.box-header -->
    <div class="box-body">
                    <ajaxToolkit:ToolkitScriptManager ID="toolkit1" runat="server"></ajaxToolkit:ToolkitScriptManager>
                    <table style="width: 100%; border: 0; padding: 0" >
                        <tr>
                            <th colspan="3">
                                Personal Info: 
                            </th> 
                        </tr>
                        <tr>
                            <td> 
                                <br />
                                <asp:Label ID="LabelStudentName" runat="server" Text="Student Name :"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxStudentName" runat="server" Height="23px" Width="165px" ></asp:TextBox> 
                                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="TextBoxStudentName" errormessage="Name cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regName" runat="server" 
                                   ControlToValidate="TextBoxStudentName" 
                                   ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                   Text="Enter a valid name" /> 
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td> 
                                <br />
                                <asp:Label ID="LabelMatricNo" runat="server" Text="Matric No :"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td><asp:TextBox ID="TextBoxMatricNo" runat="server" Height="23px" Width="165px"></asp:TextBox></td>
                            <asp:RequiredFieldValidator runat="server" id="reqMatricNo" controltovalidate="TextBoxMatricNo" errormessage="MatricNo cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regMatricNo" runat="server"    
                                ErrorMessage="MatricNo length must be 9 alphanumeric only"
                                ControlToValidate="TextBoxMatricNo"    
                                ValidationExpression="^[a-zA-Z0-9\s]{9}$" />
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td>
                                <br />
                                <asp:Label ID="LabelPhoneNo" runat="server" Text="Phone Number :"></asp:Label>
                                <br />
                             </td>
                            <td> 
                                <asp:TextBox ID="TextBoxPhoneNo" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqPhoneNo" controltovalidate="TextBoxPhoneNo" errormessage="Phone number cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regPhoneNo" 
                                    runat="server" ErrorMessage="Enter valid Phone number" 
                                    ControlToValidate="TextBoxPhoneNo" 
                                    ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"/>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td>
                                <br />
                                <asp:Label ID="LabelEmail" runat="server" Text="Email :"></asp:Label>
                                <br />
                             </td>
                            <td> 
                                <asp:TextBox ID="TextBoxEmail" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqEmail" controltovalidate="TextBoxEmail" errormessage="Email cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator
                                    ID="regEmail"
                                    ControlToValidate="TextBoxEmail"
                                    Text="Email format is invalid"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    errormessage="Enter a valid email address" 
                                    ForeColor="Red"
                                    runat="server" /> 
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td>
                                <br />
                                <asp:Label ID="LabelStudentIC" runat="server" Text="Student IC :"></asp:Label>
                                <br />
                             </td>
                            <td>
                                <asp:TextBox ID="TextBoxStudentIC" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqIC" controltovalidate="TextBoxStudentIC" errormessage="IC cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator
                                    ID="regIC"
                                    ControlToValidate="TextBoxStudentIC"
                                    Text="IC format is invalid"
                                    ValidationExpression="^\\d{6}\\d{2}\\d{4}$"
                                    errormessage="Enter a valid IC" 
                                    ForeColor="Red"
                                    runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td> <asp:Label ID="LabelAddress" runat="server" Text="Address :"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBoxAddress" runat="server" style="height:100px; width:250px;" TextMode="multiline"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqAddress" controltovalidate="TextBoxAddress" errormessage="Address cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td>
                                <br />
                                <asp:Label ID="LabelDateOfBirth" runat="server" Text="Date Of Birth :"></asp:Label>
                                <br />
                             </td>
                             <td>
                                 <div>
                                 <asp:TextBox ID="TextBoxDateOfBirth" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                 <asp:ImageButton runat="server" ID="img" ImageUrl="images/calendar.jpg" height="32px" width="38px"/>
                                 <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" TargetControlID="TextBoxDateOfBirth" PopupButtonID="img" Format="dd/MM/yyyy" CssClass= " cal_Theme1"/>                            
                                 </div> 
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td>
                                <br />
                                <asp:Label ID="LabelGender" runat="server" Text="Gender :"></asp:Label>
                                <br />
                             </td>
                            <td> 
                                <asp:CheckBox 
                                        ID="male" 
                                        runat="server" 
                                        Text="Male" 
                                        AutoPostBack="true"
                                        Font-Names="Serif"
                                        /> 
                                <asp:CheckBox 
                                        ID="female" 
                                        runat="server" 
                                        Text="Female" 
                                        AutoPostBack="true"
                                        Font-Names="Serif"
                                        /> 
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <asp:Label ID="LabelRace" runat="server" Text="Race :"></asp:Label>
                                <br />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxRace" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqRace" controltovalidate="TextBoxRace" errormessage="Race cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td>
                                <br />
                                <asp:Label ID="LabelNationality" runat="server" Text="Nationality :"></asp:Label>
                                <br />
                             </td>
                            <td> 
                                <asp:TextBox ID="TextBoxNationality" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqNationality" controltovalidate="TextBoxNationality" errormessage="Nationality cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr> 
                            <th colspan="3">
                                Contact Person: 
                            </th>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <br />
                                <asp:Label ID="LabelGuardianName" runat="server" Text="Guardian Name:"></asp:Label>
                                <br />
                            </td>
                            <td style="height: 22px"><asp:TextBox ID="TextBoxGuardianName" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqGuardianName" controltovalidate="TextBoxStudentName" errormessage="Guardian name cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regGuardianName" runat="server" 
                                   ControlToValidate="TextBoxGuardianName" 
                                   ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                   Text="Enter a valid guardian name" />
                            </td>
                            <td style="height: 22px"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <br />
                                <asp:Label ID="LabelOccupation" runat="server" Text="Occupation:"></asp:Label>
                                <br />
                            </td>
                            <td> 
                                <asp:TextBox ID="TextBoxOccupation" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqOccupation" controltovalidate="TextBoxOccupation" errormessage="Occupation cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">  
                                <br />
                                <asp:Label ID="LabelGuardianPhoneNo" runat="server" Text="Phone No:"></asp:Label>
                                <br />
                            </td>
                            <td> 
                                <asp:TextBox ID="TextBoxGuardianPhoneNo" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqGuardianPhoneNo" controltovalidate="TextBoxGuardianPhoneNo" errormessage="Guardian phone no cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regGuardianPhoneNo" 
                                    runat="server" ErrorMessage="Enter valid guardian Phone number" 
                                    ControlToValidate="TextBoxGuardianPhoneNo" 
                                    ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"/>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td class="auto-style2">   
                                <br />
                                <asp:Label ID="LabelSalary" runat="server" Text="Salary:"></asp:Label>
                                <br />
                             </td>
                            <td> 
                                <asp:TextBox ID="TextBoxSalary" runat="server" Height="23px" Width="165px"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqSalary" controltovalidate="TextBoxSalary" errormessage="Salary cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator id="regSalary"
                                   ControlToValidate="TextBoxSalary"
                                   ValidationExpression="\d+"
                                   Display="Static"
                                   EnableClientScript="true"
                                   ErrorMessage="Please enter numbers only"
                                   runat="server"/>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td class="auto-style2"><asp:Label ID="LabelGuardianAddress" runat="server" Text="Address:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextGuardianAddress" runat="server" style="height:100px; width:250px;" TextMode="multiline"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqGuardianAddress" controltovalidate="TextGuardianAddress" errormessage="Guardian address cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table> <br/>
                    <asp:Button ID="Button1" runat="server" Text="Register" Width="180px" OnClick="registerStudent" CssClass="btn btn-primary"/>
    </div>
</asp:Content>
