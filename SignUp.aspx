<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Raya_T.SignUp" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <div class="container R-form">
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
                <asp:TextBox ID="txtLastName" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name Field is Required.This Field is Required." ForeColor="Red" ValidationGroup="OK">This Field is Required.</asp:RequiredFieldValidator>
            </div>

            <div class="form-group row">
                <asp:Label ID="lblEmail" runat="server" Text="Email: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Field is Required." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="OK" ControlToValidate="txtEmail">This Field is Required.</asp:RegularExpressionValidator>
            </div>

            <div class="form-group row">
                <asp:Label ID="lblPassword" runat="server" Text="Password: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtPassword" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Passwoed  Field is Required." ForeColor="Red" ValidationGroup="OK">This Field is Required.</asp:RequiredFieldValidator>
                <br />
                <br />
            </div>

            <div class="form-group row align-items-center">
                <div class="col-auto my-1">
                <asp:Label ID="lblRole" runat="server" Text="Role: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                  
                    <asp:DropDownList ID="drpRole" runat="server" AppendDataBoundItems="True" class="col-sm-10 col-md-7 txt-box">
                        <asp:ListItem Selected="True" Enabled="false" Value="White"> Choose... </asp:ListItem>
                        <asp:ListItem Value="HR"> HR </asp:ListItem>
                        <asp:ListItem Value="HR Admin"> HR Admin </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="lblSuccess" runat="server" ForeColor="#FF3300" Text="Check User"></asp:Label>
                    </div>
            </div>

          <div class="form-group row">
            <div class="col-sm-10 ">
                <asp:Button ID="btnLogin" runat="server" Text="Register" class="btn btn-success" ValidationGroup="OK" OnClick="btnLogin_Click"/>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btnCancel_Click"/>
            </div>
          </div>
    </div>
</asp:Content>
