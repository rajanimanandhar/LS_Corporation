<%@ Page Title="Task" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="CourseworkDataWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <h3>This is task page.</h3>
    </main>

    <div class="form-container">
        <h3>Task Details:</h3>
        <form class="styled-form">
            <div class="form-group">
                <label for="taskID">Task ID:</label>
                <input type="text" id="taskID" name="taskID" class="form-control">
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
                <label for="dueDate">Due Date:</label>
                <input type="date" id="dueDate" name="dueDate" class="form-control">
            </div>

            <div class="form-group">
                <label for="status">Status:</label>
                <input type="text" id="status" name="status" class="form-control">
            </div>

            <div class="form-group">
                <label for="parentID">Parent ID:</label>
                <input type="text" id="parentID" name="parentID" class="form-control">
            </div>

            <button type="submit" class="button">Submit</button>
        </form>
    </div>
</asp:Content>
