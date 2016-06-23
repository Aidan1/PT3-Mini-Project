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
                                  (eg: 1123)
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
                      <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Add" OnClick="btnAdd_Click" />
                   
<!--                      <button type="button" runat="server" class="btn btn-default" data-dismiss="modal" onclick="">Save</button>-->
                  </div>
                </div>

              </div>
            </div>
            </div>
            <div class="box-body">   
      <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" OnRowEditing="GridView1_RowEditing" runat="server" AutoGenerateColumns="False" DataKeyNames="courseCode,courseID" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                             EmptyDataText="No course has been added" Width="100%" HeaderStyle-HorizontalAlign="Center" BorderColor="White"> 
                            <Columns>
                                <asp:TemplateField HeaderText="Course Code" >
                                    <ItemTemplate>
                                        <asp:Label ID="courseCodeLbl" runat="server" Text='<%# Eval("courseCode") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="courseCodeText" runat="server" Text='<%# Eval("courseCode") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="10%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Course ID" >
                                    <ItemTemplate>
                                        <asp:Label ID="courseIDLbl" runat="server" Text='<%# Eval("courseID") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="courseIDText" runat="server" Text='<%# Eval("courseID") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="10%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Course Name">
                                    <ItemTemplate>
                                        <asp:Label ID="courseNameLbl" runat="server" Text='<%# Eval("courseName") %>'></asp:Label>
                                    </ItemTemplate>
                                     <EditItemTemplate>
                                        <asp:TextBox ID="courseNameText" runat="server" Text='<%# Eval("courseName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="20%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Short Form">
                                    <ItemTemplate>
                                        <asp:Label ID="shortFormLbl" runat="server" Text='<%# Eval("shortForm") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="shortFormText" runat="server" Text='<%# Eval("shortForm") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="20%"></ItemStyle>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Credit Hours">
                                    <ItemTemplate>
                                        <asp:Label ID="creditHoursLbl" runat="server" Text='<%# Eval("creditHours") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="creditHoursText" runat="server" Text='<%# Eval("creditHours") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="20%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:CommandField ControlStyle-Width="20%" HeaderText="Action" ControlStyle-CssClass="icon-size" ShowEditButton="true" EditImageUrl="~/Admin/Icon/edit.png" ShowDeleteButton="true" DeleteImageUrl="~/Admin/Icon/delete1.png" UpdateImageUrl="~/Admin/Icon/update.png" CancelImageUrl="~/Admin/Icon/cancel.png" ButtonType="Image">
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>
             
       </div>
        </div>
    </div>
    </div>
</section>
</asp:Content>