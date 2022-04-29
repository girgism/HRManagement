<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newEmployee.aspx.cs" Inherits="Raya_T.newEmployee" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    
     <div class="container R-form">
         <h2 class="text-center text-light"> Adding New Employee </h2>
         <br />

            <div class="row">
                <div class="col-md-12">
                    <asp:ValidationSummary ID="vldSummary" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Strikeout="False" ForeColor="Red" ValidationGroup="OK" />
                </div>
            </div>

            <div class="form-group row">
                <asp:Label ID="lblFirstName" runat="server" Text="First Name: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                <asp:TextBox ID="txtFirstName" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name Field is Required." ForeColor="Red" ValidationGroup="OK">This Field is Required.</asp:RequiredFieldValidator>
            </div>

            <div class="form-group row">
                <asp:Label ID="lblLastName" runat="server" Text="Last Name: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server" class="col-sm-10 coRl-md-7 txt-box" placeholder="Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name Field is Required.This Field is Required." ForeColor="Red" ValidationGroup="OK">This Field is Required.</asp:RequiredFieldValidator>
            </div>

            <div class="form-group row">
             <asp:Label ID="lblBOfDate" runat="server" Text="Birth Of Date" class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                <asp:TextBox ID="txtDateOfBirth" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Birth Of Date"></asp:TextBox>
         </div>

            <div class="form-group row">
                <asp:Label ID="lblSalary" runat="server" Text="Salary" class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtSalary" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Salary"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSalary" ErrorMessage="Passwoed  Field is Required." ForeColor="Red" ValidationGroup="OK">This Field is Required.</asp:RequiredFieldValidator>
                
            </div>
         <div class="form-group row">
             <asp:Label ID="lblHireData" runat="server" Text="Hire Data" class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                <asp:TextBox ID="txtHireDate" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Hiring date"></asp:TextBox>
         </div>

          <div class="form-group row">
            <div class="col-sm-10 ">
                <asp:Button ID="btnLogin" runat="server" Text="Save" class="btn btn-success" ValidationGroup="OK" OnClick="btnLogin_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btnCancel_Click1" />
            </div>
          </div>
    </div>
</asp:Content>
