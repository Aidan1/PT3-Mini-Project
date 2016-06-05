<%@ Page Title="" Language="C#" MasterPageFile="~/Lecturer/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="listgrade.aspx.cs" Inherits="MINIPROJECT.Lecturer.listgrade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">


    <div class="box-header with-border">
        <h3 class="box-title">LIST GRADE</h3>
    </div>

    <br />
    Choose Subject&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
    <br />
     <asp:Button ID="Button1" runat="server" Text="EDIT" />
   <br />


</asp:Content>
