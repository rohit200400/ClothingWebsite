<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LuvKush_Website.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="md-col-6 mx-auto">
                <div class="card">
                    <div class="card-body my-auto">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <i class="fa-solid fa-user fa-2x"></i>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Login ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                        palceholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        palceholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="d-grid gap-2 ">
                            <asp:Button class="btn btn-success btn-md" ID="Button1" 
                                runat="server" Text="Login" />
                        </div>

                        <div class="d-grid gap-2 ">
                            <asp:Button class="btn btn-info btn-md" ID="Button2" 
                                runat="server" Text="Sign Up" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
