<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="MINIPROJECT.Student.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <style>
        h2
        {
            font-family:'Times New Roman', Times, serif;
            font-style:oblique;
            font-size: 38px;
            text-align:center;            
        }
        .auto-style1 {
            width: 174px;
        }
        h3
        {
            font-family:'Times New Roman', Times, serif;
            font-style:oblique;
            font-size:30px;
            text-align:center;
        }
    </style>

    <div>
        <div>
            <h2> About  <img src="images/images.jpg" width="58" height="50" /></h2>         
        </div>
        <br />
        <br />
        <div class="box-body">
            <table style="width: 100%; border: 0; padding: 0" >
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelStudentName" runat="server" Text="Name: "></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="student_name" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelMatricNo" runat="server" Text="Matric No :"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="matricNo" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelPhoneNo" runat="server" Text="Phone Number: "></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="phoneNo" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelEmail" runat="server" Text="Email :"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelStudentIC" runat="server" Text="Student IC :"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="ic" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelAddress" runat="server" Text="Address :"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="address" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelDateOfBirth" runat="server" Text="Date Of Birth :"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="dob" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelGender" runat="server" Text="Gender :"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="gender" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelRace" runat="server" Text="Race :"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="race" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelNationality" runat="server" Text="Nationality :"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="nationality" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
            </table> <br/>
            <h3> Guardian Info  <img src="images/family.gif" width="58" height="50" /></h3>
            <table style="width: 100%; border: 0; padding: 0" >
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelGuardianName" runat="server" Text="Guardian Name:"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="guardianName" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelOccupation" runat="server" Text="Occupation:"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="occupation" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelGuardianPhoneNo" runat="server" Text="Phone No:"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="guardianPhone" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelSalary" runat="server" Text="Salary:"></asp:Label>
                    </td>
                    <td>
                        <br />
                         <asp:Label ID="salary" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelGuardianAddress" runat="server" Text="Address:"></asp:Label>
                    </td>
                    <td>
                        <br />
                         <asp:Label ID="guardianAddress" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>    
    </div>
</asp:Content>
