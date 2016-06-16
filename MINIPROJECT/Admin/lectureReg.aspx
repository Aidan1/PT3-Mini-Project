<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="lectureReg.aspx.cs" Inherits="MINIPROJECT.Admin.lectureReg" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <div class="box-header with-border">
        <h3 class="box-title">Lecturer Registration Form</h3>
    </div><!-- /.box-header -->
    <div class="box-body">
                    <ajaxToolkit:ToolkitScriptManager ID="toolkit1" runat="server"></ajaxToolkit:ToolkitScriptManager>
                    <table class="table" style="width: 100%; border: 0; padding: 0" >
                        <tr>
                            <th colspan="3">
                                Lecturer Info: 
                            </th> 
                        </tr>
                        <tr>
                            <td> 
                                <br />
                                <asp:Label ID="LabelLectureName" runat="server" Text="Lecturer Name :"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxLectureName" CssClass="form-control" runat="server"  Height="30px" Width="100%"></asp:TextBox> 
                                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="TextBoxLectureName" errormessage="Name cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regName" runat="server" 
                                   ControlToValidate="TextBoxLectureName" 
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
                            <td><asp:TextBox ID="TextBoxMatricNo" CssClass="form-control" runat="server"  Height="30px" Width="100%"></asp:TextBox></td>
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
                                <asp:Label ID="LabelLectureIC" runat="server" Text="Lecturer IC :"></asp:Label>
                                <br />
                             </td>
                            <td>
                                <asp:TextBox ID="TextBoxLectureIC" CssClass="form-control" runat="server" Height="30px" Width="100%"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" controltovalidate="TextBoxLectureIC" validationexpression="^[0-9]{12}$" ErrorMessage="Need 12 Digit"></asp:RegularExpressionValidator>
                                
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
                    </table> <br/>
                    <asp:Button ID="Button1" runat="server" Text="Register" Width="180px" OnClick="registerLecture" CssClass="btn btn-primary"/>
                    <asp:Label ID="lblmsg" runat="server" Text="" CssClass="alert-warning"></asp:Label>
    </div>
</asp:Content>