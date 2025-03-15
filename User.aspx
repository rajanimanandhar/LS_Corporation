<%@ Page Title="User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CourseworkDataWeb.User" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
<h2 id="title" class="text-center">User</h2>
    </main>

    <div class="container mt-4">
        <div class="card p-4 shadow-sm">
            <h3 class="fw-bold">User Details:</h3>

            <div class="row g-3">
                <div class="col-md-6">
                    <asp:Label runat="server" Text="User ID:" CssClass="form-label fw-bold"></asp:Label>
                    <asp:TextBox runat="server" ID="txtUserID" CssClass="form-control" placeholder="Enter User ID"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <asp:Label runat="server" Text="Name:" CssClass="form-label fw-bold"></asp:Label>
                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Enter Name"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <asp:Label runat="server" Text="Email:" CssClass="form-label fw-bold"></asp:Label>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <asp:Label runat="server" Text="Contact:" CssClass="form-label fw-bold"></asp:Label>
                    <asp:TextBox runat="server" ID="txtContact" CssClass="form-control" placeholder="Enter Contact Number"></asp:TextBox>
                </div>
            </div>

            <div class="mt-3 d-flex justify-content-end gap-2">
                <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>

    <div class="mt-4">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USERID" DataSourceID="SqlDataSource1"
            CssClass="table table-bordered table-striped">
            <Columns>
                <asp:BoundField DataField="USERID" HeaderText="User ID" ReadOnly="True" SortExpression="USERID" />
                <asp:BoundField DataField="NAME" HeaderText="Name" SortExpression="NAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
                <asp:BoundField DataField="CONTACT" HeaderText="Contact" SortExpression="CONTACT" />
            </Columns>
        </asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM USERS"
        InsertCommand="INSERT INTO USERS (USERID, NAME, EMAIL, CONTACT) VALUES (@USERID, @NAME, @EMAIL, @CONTACT)">
        <InsertParameters>
            <asp:Parameter Name="USERID" Type="Int32" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="CONTACT" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
