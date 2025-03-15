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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MILESTONEID" DataSourceID="LS_Corporation" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" ReadOnly="True" SortExpression="MILESTONEID" />
            <asp:BoundField DataField="MILESTONENAME" HeaderText="MILESTONENAME" SortExpression="MILESTONENAME" />
            <asp:BoundField DataField="DUEDATE" HeaderText="DUEDATE" SortExpression="DUEDATE" />
            <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" SortExpression="PROJECTID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="LS_Corporation" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT_MILESTONES&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;PROJECT_MILESTONES&quot; WHERE &quot;MILESTONEID&quot; = :original_MILESTONEID AND ((&quot;MILESTONENAME&quot; = :original_MILESTONENAME) OR (&quot;MILESTONENAME&quot; IS NULL AND :original_MILESTONENAME IS NULL)) AND ((&quot;DUEDATE&quot; = :original_DUEDATE) OR (&quot;DUEDATE&quot; IS NULL AND :original_DUEDATE IS NULL)) AND ((&quot;PROJECTID&quot; = :original_PROJECTID) OR (&quot;PROJECTID&quot; IS NULL AND :original_PROJECTID IS NULL))" InsertCommand="INSERT INTO &quot;PROJECT_MILESTONES&quot; (&quot;MILESTONEID&quot;, &quot;MILESTONENAME&quot;, &quot;DUEDATE&quot;, &quot;PROJECTID&quot;) VALUES (:MILESTONEID, :MILESTONENAME, :DUEDATE, :PROJECTID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;PROJECT_MILESTONES&quot; SET &quot;MILESTONENAME&quot; = :MILESTONENAME, &quot;DUEDATE&quot; = :DUEDATE, &quot;PROJECTID&quot; = :PROJECTID WHERE &quot;MILESTONEID&quot; = :original_MILESTONEID AND ((&quot;MILESTONENAME&quot; = :original_MILESTONENAME) OR (&quot;MILESTONENAME&quot; IS NULL AND :original_MILESTONENAME IS NULL)) AND ((&quot;DUEDATE&quot; = :original_DUEDATE) OR (&quot;DUEDATE&quot; IS NULL AND :original_DUEDATE IS NULL)) AND ((&quot;PROJECTID&quot; = :original_PROJECTID) OR (&quot;PROJECTID&quot; IS NULL AND :original_PROJECTID IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MILESTONEID" Type="Decimal" />
            <asp:Parameter Name="original_MILESTONENAME" Type="String" />
            <asp:Parameter Name="original_DUEDATE" Type="DateTime" />
            <asp:Parameter Name="original_PROJECTID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MILESTONEID" Type="Decimal" />
            <asp:Parameter Name="MILESTONENAME" Type="String" />
            <asp:Parameter Name="DUEDATE" Type="DateTime" />
            <asp:Parameter Name="PROJECTID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MILESTONENAME" Type="String" />
            <asp:Parameter Name="DUEDATE" Type="DateTime" />
            <asp:Parameter Name="PROJECTID" Type="String" />
            <asp:Parameter Name="original_MILESTONEID" Type="Decimal" />
            <asp:Parameter Name="original_MILESTONENAME" Type="String" />
            <asp:Parameter Name="original_DUEDATE" Type="DateTime" />
            <asp:Parameter Name="original_PROJECTID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
