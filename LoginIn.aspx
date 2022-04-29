<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginIn.aspx.cs" Inherits="Raya_T.LoginIn" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <div class="container R-form">
            <div class="row">
                <div class="col-md-12">
                    <asp:ValidationSummary ID="vldSummary" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Strikeout="False" ForeColor="Red" ValidationGroup="OK" />
                </div>
            </div>

            <div class="form-group row">
                <asp:Label ID="lblUserName" runat="server" Text="User Name: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                &nbsp;<asp:TextBox ID="txtUserName" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Field is Required." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="OK" ControlToValidate="txtUserName">This Field is Required.</asp:RegularExpressionValidator>
            </div>

            <div class="form-group row">
                <asp:Label ID="lblPassword" runat="server" Text="Password: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtPassword" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Passwoed  Field is Required." ForeColor="Red" ValidationGroup="OK">This Field is Required.</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblUserExist" runat="server" ForeColor="Red" Text="Invalid Data or User Not Exist."></asp:Label>
                <br />
            </div>

          <div class="form-group row">
            <div class="col-sm-10 ">
                <asp:Button ID="btnLogin" runat="server" Text="LogIn" class="btn btn-success" ValidationGroup="OK" OnClick="btnLogin_Click"/>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btnCancel_Click"/>
            </div>
          </div>

          <div class="row ">
                <p class="txt-Rg" style="color:white; font-weight:bold">
                    Not have an Account?! Register Now ... 
                    <a href="SignUp.aspx" class="">Register</a>
                </p>
            </div>
    </div>

</asp:Content>
