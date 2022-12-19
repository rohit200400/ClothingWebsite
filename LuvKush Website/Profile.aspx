<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="LuvKush_Website.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMaster" runat="server">

       <div class="container-fluid">
        <div class="row m-auto">
                        <%--Profile Details--%>
            <div class="col-lg-7 md-6">
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
                                    <h5>Your Profile</h5>
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
                                    <asp:TextBox CssClass="form-control mb-2" ID="TBProName" runat="server"
                                        placeholder="Name"></asp:TextBox>
                                </div>
                            </div>

                            <%--Date of Birth--%>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TBProDOB" runat="server" TextMode="Date"
                                        placeholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <%--Contact Number box--%>
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TBProPhone" runat="server"
                                        placeholder="Name" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                            <%--Email ID--%>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TBProMail" runat="server" TextMode="Email"
                                        placeholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <%--State dropdown--%>
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control"  ID="DDLProState" runat="server">
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
                                    <asp:TextBox class="form-control" ID="TBProCity" runat="server" TextMode="SingleLine"
                                        placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <%--Pin Code--%>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TBProPinCode" runat="server" TextMode="Number"
                                        placeholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <%--Full Address--%>
                            <div class="col">
                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-4" ID="TBProAddress" runat="server"
                                        placeholder="Name" TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                            <div class="col-md-4">
                                <label>Login ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TBProLoginID" runat="server"
                                        placeholder="Login ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%--Password box--%>
                            <div class="col-md-4">
                                <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TBProPassword" runat="server"
                                        placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <%--New Password box--%>
                            <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TBProNewPassword" runat="server"
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%--Update login details Button--%>
                        <div class="d-grid gap-4">
                            <asp:Button class="btn btn-success btn-md my-2" ID="BtnProUpdLogin" 
                                runat="server" Text="Update" />
                        </div>
                        <%--Login Credentials Ends--%>

                    </div>
                </div>
            </div>
            
                        <%--Shopping Records--%>
             <div class="col-lg-5 md-6">
                <div class="card">
                    <div class="card-body my-auto">

                        <%--Shopping Icon--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <i class="fa-solid fa-bag-shopping fa-2x"></i>
                                </center>
                            </div>
                        </div>

                        <%--Heading--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Purchases</h5>
                                </center>
                            </div>
                        </div>

                        <%--Seperator line--%>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%--User Shopping details start--%>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-bordered table-striped" ID="GVPro" 
                                    runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <%--Homepage link--%>
            <a href="homepage.aspx"><< Back to Home</a>
        </div>
    </div>


</asp:Content>
