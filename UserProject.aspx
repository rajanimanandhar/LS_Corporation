<%@ Page Title="UserProject" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProject.aspx.cs" Inherits="CourseworkDataWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
  <!-- User Selection Form -->
    <div class="form-container styled-form">
        <div class="form-group">
            <label for="userSelect">Select User:</label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="USERID" DataValueField="USERID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;USERID&quot; FROM &quot;USERS&quot;"></asp:SqlDataSource>
        </div>
        <button class="button" onclick="loadUserProjects()">Load Projects</button>
    </div>

    <!-- User Project Table -->
    <div class="table-container" id="tableContainer">
        <table>
            <thead>
                <tr>
                     <th>User Name</th>
                     <th>Email</th>
                    <th>Project ID</th>
                    <th>Project Name</th>
                    <th>Due Date</th>
                    <th>Status</th>


                </tr>
            </thead>
            <tbody id="projectTableBody">
                <!-- Dynamic rows will be inserted here -->
            </tbody>
        </table>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="USERID" HeaderText="USERID" SortExpression="USERID" />
                <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" SortExpression="PROJECTID" />
                <asp:BoundField DataField="TASKID" HeaderText="TASKID" SortExpression="TASKID" />
            </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;USERS_PROJECTS_TASKS&quot; WHERE (&quot;USERID&quot; = :USERID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="USERID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    </main>
</asp:Content>
