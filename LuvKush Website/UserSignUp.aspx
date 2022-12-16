<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="LuvKush_Website.UserSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
        <div class="row m-auto">
            <div class="col-lg-8 m-auto">
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
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Member SignUp</h5>
                                </center>
                            </div>
                        </div>

                        <%--Seperator line--%>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%--User details start--%>
                        <div class="row">
                            <%--Name box--%>
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox1" runat="server"
                                        palceholder="Name"></asp:TextBox>
                                </div>
                            </div>

                            <%--Date of Birth--%>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox3" runat="server" TextMode="Date"
                                        palceholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <%--Contact Number box--%>
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox4" runat="server"
                                        palceholder="Name" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                            <%--Email ID--%>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox5" runat="server" TextMode="Email"
                                        palceholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <%--State dropdown--%>
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control"  ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra"/>
                                        <asp:ListItem Text="Delhi" Value="Delhi"/>
                                        <asp:ListItem Text="Odisa" Value="Odisa"/>
                                        <asp:ListItem Text="Andra Pradesh" Value="Andra Pradesh"/>
                                        <asp:ListItem Text="Jammu Kashmir" Value="Jammu Kashmir"/>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <%--City--%>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" TextMode="SingleLine"
                                        palceholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <%--Pin Code--%>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox8" runat="server" TextMode="Number"
                                        palceholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <%--Full Address--%>
                            <div class="col">
                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-4" ID="TextBox2" runat="server"
                                        palceholder="Name" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <%--User details ends--%>

                        <%--Login Credentials Starts--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h6 style="color:#0D6EFD">Login Credentials</h6>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <%--User ID box--%>
                            <div class="col-md-6">
                                <label>Login ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox6" runat="server"
                                        palceholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                            <%--Password box--%>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox9" runat="server"
                                        palceholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <%--Login Credentials Ends--%>

                    </div>
                </div>
            </div>
            
            <%--Homepage link--%>
            <a href="homepage.aspx"><< Back to Home</a>
        </div>
    </div>


</asp:Content>
