<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testR.aspx.cs" Inherits="Raya_T.testR" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container R-form">
        <form>
            <div class="form-group row">
                <asp:Label ID="lblFirstName" runat="server" Text="First Name: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                <asp:TextBox ID="txtFirstName" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="First Name"></asp:TextBox>
            </div>

            <div class="form-group row">
                <asp:Label ID="lblLastName" runat="server" Text="Last Name: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Last Name"></asp:TextBox>
            </div>

            <div class="form-group row">
                <asp:Label ID="lblEmail" runat="server" Text="Email: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Email"></asp:TextBox>
            </div>

            <div class="form-group row">
                <asp:Label ID="lblPassword" runat="server" Text="Password: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtPassword" runat="server" class="col-sm-10 col-md-7 txt-box" placeholder="Password"></asp:TextBox>
                <br />
                <br />
            </div>

            <div class="form-group row align-items-center">
                <div class="col-auto my-1">
                    <asp:Label ID="lblRole" runat="server" Text="Role: " class="col-sm-2 col-md-5 col-form-label"></asp:Label>
                    <select class="col-sm-10 col-md-7 txt-box" id="txtRole">
                        <option selected disabled>Choose...</option>
                        <option value="HR">HR</option>
                        <option value="HR Admin">HR Admin</option>
                  </select>
                    </div>
            </div>

          <div class="form-group row">
            <div class="col-sm-10 ">
              <button type="submit" class="btn btn-success btn-form">Register</button>
            </div>
          </div>
        </form>
    </div>

    


</asp:Content>

