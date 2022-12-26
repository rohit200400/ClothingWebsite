<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="LuvKush_Website.AdminLogin" %>
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
                                    <i class="fa-solid fa-user-lock fa-3x"></i>
                                </center>
                            </div>
                        </div>

                        <%--Heading--%>
                        <div class="row m-auto">
                            <div class="col m-auto">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>

                        <%--Seperator line--%>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%--Admin ID box--%>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TBAdminID" runat="server"
                                        placeholder="Admin ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%--Password box--%>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TBAdminPassword" runat="server"
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%--Login Button--%>
                        <div class="d-grid gap-4">
                            <asp:Button class="btn btn-success btn-md my-2" ID="BtnAdminLogin" 
                                runat="server" Text="Login" OnClick="BtnAdminLogin_Click" />
                        </div>

                    </div>
                </div>
            </div>
            
            <%--Homepage link--%>
            <a href="homepage.aspx"><< Back to Home</a>
        </div>
    </div>


</asp:Content>
