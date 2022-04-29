<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRMainMenu.aspx.cs" Inherits="Raya_T.HRMainMenu" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />

    <div runat="server" id="dvSearch"> 
        <h2 class="text-center"> Main Menu </h2>
        <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-success" OnClick="btnSearch_Click" />
&nbsp;&nbsp;
    <asp:TextBox ID="txtSearch" class="txt-box" runat="server" placeholder="Search By First Name "></asp:TextBox>

    </div>
    
    <br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <br />
                <br />
            <asp:GridView class="table table-striped table-hover" ID="grdEmp" runat="server" OnRowDataBound="grdEmp_RowDataBound" OnRowDeleting="grdEmp_RowDeleting" OnRowUpdating="grdEmp_RowUpdating">

                <Columns>
                    <asp:HyperLinkField HeaderText="Edit" Text="Edit" DataNavigateUrlFields="ID" DataNavigateUrlFormatString="EditEmp.aspx?id={0}" />
                    <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />

                    <asp:ButtonField CommandName="Update" HeaderText="Approve" ShowHeader="True" Text="Approve" runat="server"/>
                </Columns>

            </asp:GridView>
            <div class="row">
                <a href="newEmployee.aspx" class="btn btn-primary">Add New</a>
                <br />
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <h2 class="text-center text-danger">
                Are You Sure To Delete Record of  <asp:Label ID="lblname" runat="server" Text=""></asp:Label> ?
            </h2>
            <p>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-danger" OnClick="btnDelete_Click"/>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-primary" OnClick="btnCancel_Click"/>
            </p>
            <p>
                <asp:HiddenField ID="hfDelete" runat="server" />
            </p>

        </asp:View>
    </asp:MultiView>
</asp:Content>
