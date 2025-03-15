<%@ Page Title="User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CourseworkDataWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/custom-styles.css">

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
    </main>

    <div class="form-container">
        <h3>User Details:</h3>
        <form class="styled-form">
            <div class="form-group">
                <label for="userid">User ID:</label>
                <input type="text" id="userid" name="userid" class="form-control">
            </div>

            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-control">
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" class="form-control">
            </div>

            <div class="form-group">
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" class="form-control">
            </div>

            <button type="submit" class="button" >Submit</button>
        </form>
    </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USERID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="USERID" HeaderText="USERID" ReadOnly="True" SortExpression="USERID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;USERS&quot; WHERE &quot;USERID&quot; = :original_USERID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;EMIAL&quot; = :original_EMIAL) OR (&quot;EMIAL&quot; IS NULL AND :original_EMIAL IS NULL)) AND ((&quot;CONTACT&quot; = :original_CONTACT) OR (&quot;CONTACT&quot; IS NULL AND :original_CONTACT IS NULL))" InsertCommand="INSERT INTO &quot;USERS&quot; (&quot;USERID&quot;, &quot;NAME&quot;, &quot;EMIAL&quot;, &quot;CONTACT&quot;) VALUES (:USERID, :NAME, :EMIAL, :CONTACT)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;USERS&quot;" UpdateCommand="UPDATE &quot;USERS&quot; SET &quot;NAME&quot; = :NAME, &quot;EMIAL&quot; = :EMIAL, &quot;CONTACT&quot; = :CONTACT WHERE &quot;USERID&quot; = :original_USERID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;EMIAL&quot; = :original_EMIAL) OR (&quot;EMIAL&quot; IS NULL AND :original_EMIAL IS NULL)) AND ((&quot;CONTACT&quot; = :original_CONTACT) OR (&quot;CONTACT&quot; IS NULL AND :original_CONTACT IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_USERID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_EMIAL" Type="String" />
            <asp:Parameter Name="original_CONTACT" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="USERID" Type="String" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="EMIAL" Type="String" />
            <asp:Parameter Name="CONTACT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="EMIAL" Type="String" />
            <asp:Parameter Name="CONTACT" Type="String" />
            <asp:Parameter Name="original_USERID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_EMIAL" Type="String" />
            <asp:Parameter Name="original_CONTACT" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
