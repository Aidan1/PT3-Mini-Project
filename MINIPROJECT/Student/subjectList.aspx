<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="subjectList.aspx.cs" Inherits="MINIPROJECT.Student.subjectList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
     <style>
        /*Calendar Control CSS*/
        .cal_Theme1 .ajax__calendar_container {
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
        .header-center{
            text-align:center;
        }
        .padding{
            padding:10px;
        }
    </style>

      <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Course Offered</h3>
        </div>
          <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="year" DataValueField="semesterID">
                 <asp:ListItem Text="Choose Course Code"></asp:ListItem>                     
               </asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [year], [semester], [semesterID] FROM [year_semester]"></asp:SqlDataSource>
         
        <div class="panel-body">
            
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="course_offered_ID" >
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
                <ItemStyle Width="20%"></ItemStyle>
            </asp:TemplateField>
           
        </Columns>
                  <HeaderStyle BackColor="#3B8CBB" BorderColor="#3B8CBB" BorderStyle="None" ForeColor="White" VerticalAlign="Middle"></HeaderStyle>
                <RowStyle HorizontalAlign="Center" Height="50px" />
            </asp:GridView>
            </div>
           </div>




</asp:Content>
