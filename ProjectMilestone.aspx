<%@ Page Title="ProjectMilestone" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectMilestone.aspx.cs" Inherits="CourseworkDataWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
 <div class="form-container styled-form">
     <div class="form-group">
         <label for="project">Select Project:</label>
         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LA_Corporation" DataTextField="PROJECTID" DataValueField="PROJECTID" AutoPostBack="True"></asp:DropDownList>

         <asp:SqlDataSource ID="LA_Corporation" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PROJECTID&quot; FROM &quot;PROJECTS&quot;"></asp:SqlDataSource>

     </div>
     <button class="button" onclick="loadProjectsMilestone()">Load Projects</button>
 </div>

 <!-- User Project Table -->
 <div class="table-container" id="tableContainer">
 </div>      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MILESTONEID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" ReadOnly="True" SortExpression="MILESTONEID" />
                    <asp:BoundField DataField="MILESTONENAME" HeaderText="MILESTONENAME" SortExpression="MILESTONENAME" />
                    <asp:BoundField DataField="DUEDATE" HeaderText="DUEDATE" SortExpression="DUEDATE" />
                    <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" SortExpression="PROJECTID" />
                </Columns>
            </asp:GridView>
       


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT_MILESTONES&quot; WHERE (&quot;PROJECTID&quot; = :PROJECTID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="PROJECTID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
       


            <asp:SqlDataSource ID="LS_Corporation" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PROJECTID&quot; FROM &quot;PROJECTS&quot;"></asp:SqlDataSource>


    </main>

</asp:Content>
