<%@ Page Title="UserProject" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProject.aspx.cs" Inherits="CourseworkDataWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
  <!-- User Selection Form -->
    <div class="form-container styled-form">
        <div class="form-group">
            <label for="userSelect">Select User:</label>
            <select id="userSelect" class="form-control" onchange="loadUserProjects()">
                <option value="">-- Select a User --</option>
                <option value="1">User 1</option>
                <option value="2">User 2</option>
                <option value="3">User 3</option>
            </select>
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
    </main>
</asp:Content>
