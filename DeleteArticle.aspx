<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteArticle.aspx.cs" Inherits="Personal_Microblog_System.DeleteArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="bg-primary text-center" style="padding-top: 20px; box-shadow: 3px 3px 15px grey; padding-bottom: 30px; margin-bottom: 10px; font-family: 'Faster One'">Edit / Delete Articles</h1>
    <div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="BlogId" HeaderText="Blog ID" />
                <asp:BoundField DataField="PostDate" HeaderText="Post Date" />
                <asp:BoundField DataField="Heading" HeaderText="Title" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
