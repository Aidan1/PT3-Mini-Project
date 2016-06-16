<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manageSubject.aspx.cs" Inherits="MINIPROJECT.Admin.manageSubject" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
     <style>
        .icon-size{
            width:30px;
            height:30px;
        }

        
    </style>
    <section class="content-header">
    <h1>
        Course
        <small>Course List</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Course List</li>
        <li><a href="#add" data-toggle="modal" data-target="#add"><span>Login</span></a></li>
    </ol>
</section>

<section class="content">
    <div class="row">
    <div class="col-md-12 col-sm-6">
        <div class="box">
            <div class="box-header with-border">
                <table>
                    <tr>
                        <td class="col-md-6">
                            <h3 class="box-title">Course List</h3>
                        </td>
                        <td class="col-md-6">   
                            <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal">Add Course</button>
                        </td>
                    </tr>
                </table>
                <!-- Trigger the modal with a button --> 
            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
              <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add Course</h4>
                  </div>
                  <div class="modal-body">
                      <table>
                          <tr>
                              <td class="col-md-4">
                                  <asp:Label ID="LabelCourseCode" runat="server" Text="Course Code"></asp:Label>
                              </td>
                              <td class="col-md-6">
                                  <asp:TextBox CssClass="form-control" ID="TextBoxCourseCode" runat="server"></asp:TextBox>
                              </td>
                              <td class="col-md-2">
                                  (eg: SCSV)
                              </td>
                          </tr>
                          <tr>
                              <td class="col-md-4">
                                  <asp:Label ID="LabelCourseID" runat="server" Text="Course ID"></asp:Label>
                              </td>
                              <td class="col-md-6">
                                  <asp:TextBox  CssClass="form-control" ID="TextBoxCourseID" runat="server"></asp:TextBox>
                              </td>
                              <td class="col-md-2">

                               </td>
                          </tr>
                          <tr>
                              <td class="col-md-4">
                                  <asp:Label ID="LabelCourseName" runat="server" Text="Course Name"></asp:Label>
                              </td>
                              <td class="col-md-6">
                                  <asp:TextBox  CssClass="form-control" ID="TextBoxCourseName" runat="server"></asp:TextBox>
                              </td>
                              <td class="col-md-2">

                              </td>
                           </tr>
                           <tr>
                               <td class="col-md-4">
                                   <asp:Label ID="LabelShortName" runat="server" Text="Short Name"></asp:Label>
                               </td>
                               <td class="col-md-6">
                                   <asp:TextBox CssClass="form-control" ID="TextBoxShortName" runat="server"></asp:TextBox>
                               </td>
                               <td class="col-md-2">

                               </td>
                           </tr>
                           <tr>
                               <td class="col-md-4">
                                   <asp:Label ID="LabelCreditHours" runat="server" Text="Credit Hours"></asp:Label>
                               </td>
                               <td class="col-md-6">
                                   <asp:TextBox CssClass="form-control" ID="TextBoxCreditHours" runat="server"></asp:TextBox>
                               </td>
                               <td class="col-md-2">

                               </td>
                           </tr>
                      </table>
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                      <asp:Button ID="Button1" runat="server" Text="Button" OnClick="btnAdd_Click" />
                   
<!--                      <button type="button" runat="server" class="btn btn-default" data-dismiss="modal" onclick="">Save</button>-->
                  </div>
                </div>

              </div>
            </div>
            </div>
            <div class="box-body">   
        <asp:GridView ID="GridView1"  CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="courseCode,courseID" Width="100%">
        <Columns>
            <asp:BoundField DataField="courseCode" HeaderText="Course Code" ReadOnly="True" SortExpression="courseCode" HeaderStyle-CssClass="header-padding" >
<HeaderStyle CssClass="header-padding"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="courseID"  HeaderText="Course ID" ReadOnly="True" SortExpression="courseID" />
            <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName" />
            <asp:BoundField DataField="shortForm" HeaderText="Short Name" SortExpression="shortForm" />
            <asp:BoundField DataField="creditHours" HeaderText="Credit Hours" SortExpression="creditHours" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Action" ControlStyle-CssClass="icon-size" DeleteImageUrl="~/Admin/Icon/delete1.png"
                 ShowEditButton="True" UpdateImageUrl="~/Admin/Icon/update.png" CancelImageUrl="~/Admin/Icon/cancel.png" EditImageUrl="~/Admin/Icon/edit.png" ButtonType="Image" />
        </Columns>
            <HeaderStyle BorderColor="#337AB7" VerticalAlign="Middle" Height="50px" />
            <RowStyle Height="35px"  />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [courseCode] = @courseCode AND [courseID] = @courseID" InsertCommand="INSERT INTO [course] ([courseCode], [courseID], [courseName], [shortForm], [creditHours]) VALUES (@courseCode, @courseID, @courseName, @shortForm, @creditHours)" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [courseName] = @courseName, [shortForm] = @shortForm, [creditHours] = @creditHours WHERE [courseCode] = @courseCode AND [courseID] = @courseID">
        <DeleteParameters>
            <asp:Parameter Name="courseCode" Type="String" />
            <asp:Parameter Name="courseID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="courseCode" Type="String" />
            <asp:Parameter Name="courseID" Type="Int32" />
            <asp:Parameter Name="courseName" Type="String" />
            <asp:Parameter Name="shortForm" Type="String" />
            <asp:Parameter Name="creditHours" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="courseName" Type="String" />
            <asp:Parameter Name="shortForm" Type="String" />
            <asp:Parameter Name="creditHours" Type="Int32" />
            <asp:Parameter Name="courseCode" Type="String" />
            <asp:Parameter Name="courseID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
             
       </div>
        </div>
    </div>
    </div>
</section>
</asp:Content>