<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="LuvKush_Website.Inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMaster" runat="server">

    <div class="container-fluid mb-2">
        <div class="row">
            <div class="col-lg-5 md-6">
                <div class="card">
                    <div class="card-body my-auto">

                        <%--User Icon--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <i class="fa-solid fa-shirt fa-2x"></i>
                                </center>
                            </div>
                        </div>

                        <%--Heading--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Apperal Details</h5>
                                </center>
                            </div>
                        </div>

                        <%--Seperator line--%>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%--Image upload--%>
                        <div class="row">
                            <div class="col">
                                <asp:FileUpload class="form-control" ID="FUInventory" runat="server" />
                            </div>
                        </div>

                        <div class="row">
                            <%--Apperal ID--%>
                            <div class="col-md-4">
                                <label>Apperal ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TBInvID" runat="server"
                                            placeholder="Name"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server">
                                            <i class="fas fa-check-circle"></i>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <%--Apperal Name--%>
                            <div class="col-md-8">
                                <label>Apperal Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-2" ID="TBInvName" runat="server" TextMode="SingleLine"
                                        placeholder="Login ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                             <%--Category dropdown--%>
                            <div class="col-md-4">
                                <label>Category</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="LBInvCategory" runat="server" SelectionMode="Multiple" Rows="7">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="Category1" Value="Category1"/>
                                        <asp:ListItem Text="Category2" Value="Category2"/>
                                    </asp:ListBox>
                                </div>
                            </div>

                            
                            <div class="col-md-4">
                                <%--Age--%>
                                <label>Age</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control"  ID="DDLInvAge" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="3-6 Months" Value="3-6 Months"/>
                                        <asp:ListItem Text="6-9 Months" Value="6-9 Months"/>
                                        <asp:ListItem Text="9-12 Months" Value="9-12 Months"/>
                                        <asp:ListItem Text="12-18 Months" Value="12-18 Months"/>
                                        <asp:ListItem Text="18-24 Months" Value="18-24 Months"/>
                                        <asp:ListItem Text="2-4 Years" Value="2-4 Years"/>
                                        <asp:ListItem Text="4-6 Years" Value="4-6 Years"/>
                                        <asp:ListItem Text="6-8 Years" Value="6-8 Years"/>
                                        <asp:ListItem Text="8-10 Years" Value="8-10 Years"/>
                                        <asp:ListItem Text="10-12 Years" Value="10-12 Years"/>
                                        <asp:ListItem Text="12-15 Years" Value="12-15 Years"/>
                                    </asp:DropDownList>
                                </div>

                                <%--Gender--%>
                                <label>Gender</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control"  ID="DDLInvGender" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="Boys" Value="Boys"/>
                                        <asp:ListItem Text="Girls" Value="Girls"/>
                                    </asp:DropDownList>
                                </div>

                                <%--Price--%>
                                <label>Price</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TBInvPrice" runat="server" TextMode="Number"
                                        placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <%--Color--%>
                                <label>Color</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control"  ID="DDLInvColor" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="Red" Value="Red"/>
                                        <asp:ListItem Text="Blue" Value="Blue"/>
                                    </asp:DropDownList>
                                </div>

                                <%--Material--%>
                                <label>Material</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control"  ID="DDLInvMaterial" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="Material1" Value="Material1"/>
                                    </asp:DropDownList>
                                </div>

                                <%--Quantity--%>
                                <label>Quantity</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="DDLInvQuantity" runat="server" TextMode="Number"
                                        placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <%--Description--%>
                            <div class="col">
                                <label>Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-4" ID="TBInvDesc" runat="server"
                                        placeholder="Name" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <%--Update Button--%>
                        <div class="col md-4">
                            <asp:Button class="form-control btn btn-info btn-md" ID="BtnInvUpdate" 
                                runat="server" Text="Update" />
                        </div>

                        <%--Add Button--%>
                        <div class="col md-4">
                            <asp:Button class="form-control btn btn-success btn-md" ID="BtnInvAdd" 
                                runat="server" Text="Add" />
                        </div>

                        <%--Delete Button--%>
                        <div class="col md-4">
                            <asp:Button class="form-control btn btn-danger btn-md" ID="BtnInvDelete" 
                                runat="server" Text="Delete" />
                        </div>

                        </div>

                    </div>
                </div>
            </div>

                                <div class="col-lg-7 md-6">
                <div class="card">
                    <div class="card-body my-auto">

                        <%--User Icon--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <i class="fa-solid fa-boxes-stacked fa-2x"></i>
                                </center>
                            </div>
                        </div>

                        <%--Heading--%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Inventory Details</h5>
                                </center>
                            </div>
                        </div>

                        <%--Seperator line--%>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%--Data grid View--%>
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GVInv" 
                                    runat="server"></asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
