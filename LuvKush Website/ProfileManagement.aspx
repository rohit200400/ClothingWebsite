<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProfileManagement.aspx.cs" Inherits="LuvKush_Website.ProfileManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMaster" runat="server">
    <div class="container-fluid">
        <div class="row m-auto">
            <%--Profile Details--%>
            <div class="col-md-5">
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
                            <%--ID box--%>
                            <div class="col-md-4">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"
                                        placeholder="ID" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <%--Account status--%>
                            <div class="col-md-8">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                            placeholder="Account Status" TextMode="SingleLine"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server">
                                            <i class="fas fa-check-circle"></i>
                                        </asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning" ID="LinkButton2" runat="server">
                                            <i class="fa-solid fa-pen-to-square"></i>
                                        </asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server">
                                            <i class="fa-solid fa-trash"></i>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <%--Name box--%>
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox1" runat="server"
                                        placeholder="Name"></asp:TextBox>
                                </div>
                            </div>

                            <%--Date of Birth--%>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox3" runat="server" TextMode="Date"
                                        placeholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <%--Contact Number box--%>
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox4" runat="server"
                                        placeholder="Number" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                            <%--Email ID--%>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox5" runat="server" TextMode="Email"
                                        placeholder="Email ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <%--State dropdown--%>
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Delhi" Value="Delhi" />
                                        <asp:ListItem Text="Odisa" Value="Odisa" />
                                        <asp:ListItem Text="Andra Pradesh" Value="Andra Pradesh" />
                                        <asp:ListItem Text="Jammu Kashmir" Value="Jammu Kashmir" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <%--City--%>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" TextMode="SingleLine"
                                        placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <%--Pin Code--%>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TextBox8" runat="server" TextMode="Number"
                                        placeholder="Pin Code"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <%--Full Address--%>
                            <div class="col">
                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-4" ID="TextBox2" runat="server"
                                        placeholder="Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <%--User details ends--%>

                        <%--Delete User Button--%>
                        <div class="d-grid gap-4">
                            <asp:Button class="btn btn-danger btn-md my-2" ID="Button1"
                                runat="server" Text="Delete User" />
                        </div>

                    </div>
                </div>
            </div>

            <%--Members List--%>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body my-auto">

                        <%--Members Icon--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <i class="fa-solid fa-users-line fa-2x"></i>
                                </center>
                            </div>
                        </div>

                        <%--Heading--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Member List</h5>
                                </center>
                            </div>
                        </div>

                        <%--Seperator line--%>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%--Users details--%>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-bordered table-striped" ID="GVProM" runat="server"></asp:GridView>
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
