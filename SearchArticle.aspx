<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchArticle.aspx.cs" Inherits="Personal_Microblog_System.SearchArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="bg-primary text-center" style="padding-top: 20px; box-shadow: 3px 3px 15px grey; padding-bottom: 30px; margin-bottom: 10px; font-family: 'Faster One'">Search Articles</h1>

    <div>
        <table width="50%" align="center">
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="SearchTextBox" Width="472px" /> &nbsp; <asp:Button Text="Search" runat="server" ID="SearchButton" OnClick="SearchButton_Click" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>

        &nbsp;<asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>


    </div>

</asp:Content>
