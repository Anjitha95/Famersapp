<%@ Page Title="" Language="C#" MasterPageFile="~/administrator.master" AutoEventWireup="true" CodeFile="adminkrishibhavan.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 181px;
    }
    .style5
    {
        width: 194px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <table class="style1">
            <tr>
                <td>
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                        onitemcommand="DataGrid1_ItemCommand">
                        <Columns>
                            <asp:BoundColumn DataField="KID" HeaderText="Kid" Visible="False">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="placename" HeaderText="Place"></asp:BoundColumn>
                            <asp:BoundColumn DataField="panchayath" HeaderText="panchayath">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="District" HeaderText="District"></asp:BoundColumn>
                            <asp:BoundColumn DataField="PIN" HeaderText="PIN"></asp:BoundColumn>
                            <asp:BoundColumn DataField="phoneno" HeaderText="Contact number">
                            </asp:BoundColumn>
                            <asp:ButtonColumn Text="edit" CommandName="edit"></asp:ButtonColumn>
                        </Columns>
                    </asp:DataGrid>
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
            <tr>
                <td>
                    <asp:Button ID="add" runat="server" Text="ADD" onclick="add_Click" />
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
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    Krishibhavan ID</td>
                <td>
                    <asp:TextBox ID="k_id" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    place</td>
                <td>
                    <asp:TextBox ID="pl_c" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="pl_c" ErrorMessage=" !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    panchayath</td>
                <td>
                    <asp:TextBox ID="pan_ch" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="pan_ch" ErrorMessage=" !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    district</td>
                <td>
                    <asp:TextBox ID="dis_t" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="dis_t" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    pin</td>
                <td>
                    <asp:TextBox ID="Pin" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    contact number</td>
                <td>
                    <asp:TextBox ID="cnt_nm" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="cnt_nm" ErrorMessage=" !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="save" runat="server" onclick="save_Click" Text="SAVE" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
</asp:Content>

