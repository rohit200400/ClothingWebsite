<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LuvKush_Website.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMaster" runat="server">

    <div class="container">
        <div class="row m-auto">
            <div class="col-lg-6 m-auto">
                <div class="card">
                    <div class="card-body my-auto">

                        <%--User Icon--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <i class="fa-solid fa-user fa-2x"></i>
                                </center>
                            </div>
                        </div>

                        <%--Heading--%>
                        <div class="row m-auto">
                            <div class="col m-auto">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>

                        <%--Seperator line--%>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%--User ID box--%>
                        <div class="row">
                            <div class="col">
                                <label>Login ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TBLoginID" runat="server"
                                        placeholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%--Password box--%>
                        <div class="row">
                            <div class="col">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TBLoginPwd" runat="server"
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%--Login Button--%>
                        <div class="d-grid gap-4">
                            <asp:Button class="btn btn-success btn-md my-2" ID="BtnLgnLogin" 
                                runat="server" Text="Login" />
                        </div>

                        <%--Signup Button html--%>
                        <div class="d-grid gap-2 ">
                            <a class="btn btn-info" href="UserSignUp.aspx" role="button" id="BtnLgnSignup">Sign Up</a>
                        </div>

                    </div>
                </div>
            </div>
            
            <%--Homepage link--%>
            <a href="homepage.aspx"><< Back to Home</a>
        </div>
    </div>

</asp:Content>
