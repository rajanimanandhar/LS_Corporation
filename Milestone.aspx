<%@ Page Title="Milestone" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Milestone.aspx.cs" Inherits="CourseworkDataWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
    </main>
    <div class="form-container">
        <h3>Milestone Details:</h3>
        <form class="styled-form">
            <div class="form-group">
                <label for="milestoneID">Milestone ID:</label>
                <input type="text" id="milestoneID" name="milestoneID" class="form-control">
            </div>

            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-control">
            </div>

            <div class="form-group">
                <label for="startDate">Start Date:</label>
                <input type="date" id="startDate" name="startDate" class="form-control">
            </div>

            <div class="form-group">
                <label for="projectID">Project ID:</label>
                <input type="text" id="projectID" name="projectID" class="form-control">
            </div>

            <button type="submit" class="button">Submit</button>
        </form>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MILESTONEID" DataSourceID="LS_Corporation">
        <Columns>
            <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" ReadOnly="True" SortExpression="MILESTONEID" />
            <asp:BoundField DataField="MILESTONENAME" HeaderText="MILESTONENAME" SortExpression="MILESTONENAME" />
            <asp:BoundField DataField="DUEDATE" HeaderText="DUEDATE" SortExpression="DUEDATE" />
            <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" SortExpression="PROJECTID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="LS_Corporation" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT_MILESTONES&quot;"></asp:SqlDataSource>
</asp:Content>
