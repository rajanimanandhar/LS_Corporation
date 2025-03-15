<%@ Page Title="Project" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="CourseworkDataWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
    </main>

    <div class="form-container">
        <h3>Project Details:</h3>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECTID" DataSourceID="LS_Corporation" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" ReadOnly="True" SortExpression="PROJECTID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="STARTDATE" HeaderText="STARTDATE" SortExpression="STARTDATE" />
            <asp:BoundField DataField="DUEDATE" HeaderText="DUEDATE" SortExpression="DUEDATE" />
            <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="LS_Corporation" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECTS&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;PROJECTS&quot; WHERE &quot;PROJECTID&quot; = :original_PROJECTID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;STARTDATE&quot; = :original_STARTDATE) OR (&quot;STARTDATE&quot; IS NULL AND :original_STARTDATE IS NULL)) AND ((&quot;DUEDATE&quot; = :original_DUEDATE) OR (&quot;DUEDATE&quot; IS NULL AND :original_DUEDATE IS NULL)) AND ((&quot;STATUS&quot; = :original_STATUS) OR (&quot;STATUS&quot; IS NULL AND :original_STATUS IS NULL))" InsertCommand="INSERT INTO &quot;PROJECTS&quot; (&quot;PROJECTID&quot;, &quot;NAME&quot;, &quot;STARTDATE&quot;, &quot;DUEDATE&quot;, &quot;STATUS&quot;) VALUES (:PROJECTID, :NAME, :STARTDATE, :DUEDATE, :STATUS)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;PROJECTS&quot; SET &quot;NAME&quot; = :NAME, &quot;STARTDATE&quot; = :STARTDATE, &quot;DUEDATE&quot; = :DUEDATE, &quot;STATUS&quot; = :STATUS WHERE &quot;PROJECTID&quot; = :original_PROJECTID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;STARTDATE&quot; = :original_STARTDATE) OR (&quot;STARTDATE&quot; IS NULL AND :original_STARTDATE IS NULL)) AND ((&quot;DUEDATE&quot; = :original_DUEDATE) OR (&quot;DUEDATE&quot; IS NULL AND :original_DUEDATE IS NULL)) AND ((&quot;STATUS&quot; = :original_STATUS) OR (&quot;STATUS&quot; IS NULL AND :original_STATUS IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PROJECTID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_STARTDATE" Type="DateTime" />
            <asp:Parameter Name="original_DUEDATE" Type="DateTime" />
            <asp:Parameter Name="original_STATUS" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PROJECTID" Type="String" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="STARTDATE" Type="DateTime" />
            <asp:Parameter Name="DUEDATE" Type="DateTime" />
            <asp:Parameter Name="STATUS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="STARTDATE" Type="DateTime" />
            <asp:Parameter Name="DUEDATE" Type="DateTime" />
            <asp:Parameter Name="STATUS" Type="String" />
            <asp:Parameter Name="original_PROJECTID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_STARTDATE" Type="DateTime" />
            <asp:Parameter Name="original_DUEDATE" Type="DateTime" />
            <asp:Parameter Name="original_STATUS" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
