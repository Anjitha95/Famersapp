<%@ Page Title="" Language="C#" MasterPageFile="~/administrator.master" AutoEventWireup="true" CodeFile="adminarticle.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
            onitemcommand="DataGrid1_ItemCommand">
            <Columns>
                <asp:BoundColumn DataField="artid" Visible="False"></asp:BoundColumn>
                <asp:BoundColumn DataField="date" HeaderText="date"></asp:BoundColumn>
                <asp:BoundColumn DataField="subject" HeaderText="title"></asp:BoundColumn>
                <asp:BoundColumn DataField="article" Visible="False"></asp:BoundColumn>
                <asp:ButtonColumn CommandName="d" Text="download"></asp:ButtonColumn>
                <asp:ButtonColumn CommandName="remove" Text="remove"></asp:ButtonColumn>
            </Columns>
        </asp:DataGrid>
        <table class="style1">
            <tr>
                <td>
                    <asp:Button ID="add" runat="server" onclick="add_Click" Text="ADD" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table class="style1">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    Article Title</td>
                <td>
                    <asp:TextBox ID="artit" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    File</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="upload" runat="server" onclick="upload_Click" Text="UPLOAD" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="save" runat="server" onclick="save_Click" Text="SAVE" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
</asp:Content>

