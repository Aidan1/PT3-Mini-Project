<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="MINIPROJECT.Student.profile" %>
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
        <h3 class="box-title">My Profile</h3>
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
                                <asp:Label ID="LabelStudentName2" runat="server" Text="AMIER MUSSTAQIM :"></asp:Label>
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
                           <asp:Label ID="LabelMatricNo2" runat="server" Text="A13CS0010"></asp:Label>
                           
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td>
                                <br />
                                <asp:Label ID="LabelPhoneNo" runat="server" Text="Phone Number :"></asp:Label>
                                <br />
                             </td>
                            <td> 
                                <asp:Label ID="LabelPhoneNo2" runat="server" Text="0145329073"></asp:Label>
                             
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
                                <asp:Label ID="LabelEmail2" runat="server" Text="amier164@gmail.com"></asp:Label>
                            
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
                                <asp:Label ID="LabelStudentIC2" runat="server" Text="940416055137"></asp:Label>
                              
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td> <asp:Label ID="LabelAddress" runat="server" Text="Address :"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBoxAddress" runat="server" style="height:100px; width:250px;" TextMode="multiline"></asp:TextBox>
                               
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
                                
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td class="auto-style2"><asp:Label ID="LabelGuardianAddress" runat="server" Text="Address:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextGuardianAddress" runat="server" style="height:100px; width:250px;" TextMode="multiline"></asp:TextBox>
                                
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table> <br/>
                    
    </div>
</asp:Content>
