<%@ Page Title="TopPerformer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TopPerformer.aspx.cs" Inherits="CourseworkDataWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
 <div class="form-container styled-form">
     <div class="form-group">
         <label for="project">Select Project:</label>
         <select id="userProject" class="form-control" onchange="loadProjectsUser()">
             <option value="">-- Select a Project --</option>
             <option value="1">Project 1</option>
             <option value="2">Project 2</option>
         </select>
     </div>
     <button class="button" onclick="loadProjectsUser()">Load Projects</button>
 </div>

 <!-- User Project Table -->
 <div class="table-container" id="tableContainer">
     <table>
         <thead>
             <tr>
                 <th>UserID</th>
                 <th>User Name</th>
                 <th>No. of Task</th>

             </tr>
         </thead>
         <tbody id="projectTableBody">
             <!-- Dynamic rows will be inserted here -->
         </tbody>
     </table>
 </div>             
    </main>
</asp:Content>
