<%@ Page Title="Task" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="CourseworkDataWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
    </main>

    <div class="form-container">
        <h3>Task Details:</h3>
        <form class="styled-form">
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
             <select name="status" id="status"  class="form-control">
              <option value="Ongoing">Ongoing</option>
              <option value="Completed">Completed</option>
            </select> </div>
            <button type="submit" class="button">Submit</button>
        </form>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TASKID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TASKID" HeaderText="TASKID" ReadOnly="True" SortExpression="TASKID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="STARTDATE" HeaderText="STARTDATE" SortExpression="STARTDATE" />
            <asp:BoundField DataField="DUEDATE" HeaderText="DUEDATE" SortExpression="DUEDATE" />
            <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
            <asp:BoundField DataField="PARENTTASKID" HeaderText="PARENTTASKID" SortExpression="PARENTTASKID" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TASKS&quot; WHERE &quot;TASKID&quot; = :original_TASKID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;STARTDATE&quot; = :original_STARTDATE) OR (&quot;STARTDATE&quot; IS NULL AND :original_STARTDATE IS NULL)) AND ((&quot;DUEDATE&quot; = :original_DUEDATE) OR (&quot;DUEDATE&quot; IS NULL AND :original_DUEDATE IS NULL)) AND ((&quot;STATUS&quot; = :original_STATUS) OR (&quot;STATUS&quot; IS NULL AND :original_STATUS IS NULL)) AND ((&quot;PARENTTASKID&quot; = :original_PARENTTASKID) OR (&quot;PARENTTASKID&quot; IS NULL AND :original_PARENTTASKID IS NULL))" InsertCommand="INSERT INTO &quot;TASKS&quot; (&quot;TASKID&quot;, &quot;NAME&quot;, &quot;STARTDATE&quot;, &quot;DUEDATE&quot;, &quot;STATUS&quot;, &quot;PARENTTASKID&quot;) VALUES (:TASKID, :NAME, :STARTDATE, :DUEDATE, :STATUS, :PARENTTASKID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TASKS&quot;" UpdateCommand="UPDATE &quot;TASKS&quot; SET &quot;NAME&quot; = :NAME, &quot;STARTDATE&quot; = :STARTDATE, &quot;DUEDATE&quot; = :DUEDATE, &quot;STATUS&quot; = :STATUS, &quot;PARENTTASKID&quot; = :PARENTTASKID WHERE &quot;TASKID&quot; = :original_TASKID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;STARTDATE&quot; = :original_STARTDATE) OR (&quot;STARTDATE&quot; IS NULL AND :original_STARTDATE IS NULL)) AND ((&quot;DUEDATE&quot; = :original_DUEDATE) OR (&quot;DUEDATE&quot; IS NULL AND :original_DUEDATE IS NULL)) AND ((&quot;STATUS&quot; = :original_STATUS) OR (&quot;STATUS&quot; IS NULL AND :original_STATUS IS NULL)) AND ((&quot;PARENTTASKID&quot; = :original_PARENTTASKID) OR (&quot;PARENTTASKID&quot; IS NULL AND :original_PARENTTASKID IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TASKID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_STARTDATE" Type="DateTime" />
            <asp:Parameter Name="original_DUEDATE" Type="DateTime" />
            <asp:Parameter Name="original_STATUS" Type="String" />
            <asp:Parameter Name="original_PARENTTASKID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TASKID" Type="String" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="STARTDATE" Type="DateTime" />
            <asp:Parameter Name="DUEDATE" Type="DateTime" />
            <asp:Parameter Name="STATUS" Type="String" />
            <asp:Parameter Name="PARENTTASKID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="STARTDATE" Type="DateTime" />
            <asp:Parameter Name="DUEDATE" Type="DateTime" />
            <asp:Parameter Name="STATUS" Type="String" />
            <asp:Parameter Name="PARENTTASKID" Type="String" />
            <asp:Parameter Name="original_TASKID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_STARTDATE" Type="DateTime" />
            <asp:Parameter Name="original_DUEDATE" Type="DateTime" />
            <asp:Parameter Name="original_STATUS" Type="String" />
            <asp:Parameter Name="original_PARENTTASKID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
