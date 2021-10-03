<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddArticle.aspx.cs" Inherits="Personal_Microblog_System.AddArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="bg-primary text-center" style="padding-top: 20px; box-shadow: 3px 3px 15px grey; padding-bottom: 30px; margin-bottom: 10px; font-family: 'Faster One'">Add Article &nbsp; (<asp:Label ID="ArticleSubmitStateLabel" runat="server" Text=""></asp:Label>)
    </h1>

    <table align="center" width="50%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Title of the Article"></asp:Label>
            </td>
            <td>
                <asp:TextBox id="ArticleTitleTextBox" runat="server" /><br /><br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox id="ArticleDescriptionnTextarea" TextMode="multiline" Columns="50" Rows="5" runat="server" /><br /><br />
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>
                &nbsp;<asp:Button ID="ArticleSubmitButton" runat="server" Text="Submit" OnClick="ArticleSubmitButton_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <div>

        <h1 class="bg-primary text-center" style="padding-top: 20px; box-shadow: 3px 3px 15px grey; padding-bottom: 30px; margin-bottom: 10px; font-family: 'Faster One'">List of Articles</h1>

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
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
