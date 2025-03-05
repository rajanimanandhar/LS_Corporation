<%@ Page Title="Subtask" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subtask.aspx.cs" Inherits="CourseworkDataWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>

    </main>
 <div class="form-container">
     <h3>SubTask Details:</h3>
     <form class="styled-form">
              <div class="form-group">
     <label for="parentID">Parent ID:</label>
     <input type="text" id="parentID" name="parentID" class="form-control">
 </div>
              <div class="form-group">
             <label for="name">Name:</label>
             <select name="subTaskName" id="subTaskName"  class="form-control" onchange="SubTaskDetails()">
  <option value="Presentation">Presentation</option>
  <option value="Design">Design</option>
</select> 
         </div>

         <div class="form-group">
             <label for="startDate">Start Date:</label>
             <input type="date" id="startDate" name="startDate" class="form-control">
         </div>

         <div class="form-group">
             <label for="dueDate">Due Date:</label>
             <input type="date" id="dueDate" name="dueDate" class="form-control">
         </div>
              <div class="form-group">
             <label for="status">Status:</label>
             <select name="status" id="status"  class="form-control" onchange="SubTaskDetails()">
  <option value="Ongoing">Ongoing</option>
  <option value="Completed">Completed</option>
</select> </div>
         <button type="submit" onclick="SubTaskDetails()" class="button">Submit</button>
     </form>
 </div>        
</asp:Content>
