<%@ Page Title="" Language="C#" MasterPageFile="~/agircultureofficer.master" AutoEventWireup="true" CodeFile="agridoubtclearence.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 170px;
        }
        .style4
        {
            width: 252px;
        }
        .style5
        {
            width: 226px;
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
                            onitemcommand="DataGrid1_ItemCommand" onitemcreated="DataGrid1_ItemCreated">
                            <Columns>
                                <asp:BoundColumn DataField="fromid" HeaderText="From"></asp:BoundColumn>
                                <asp:BoundColumn DataField="toid" HeaderText="To"></asp:BoundColumn>
                                <asp:BoundColumn DataField="type" HeaderText="Type"></asp:BoundColumn>
                                <asp:BoundColumn DataField="time" HeaderText="time"></asp:BoundColumn>
                                <asp:BoundColumn DataField="date" HeaderText="date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="msgid" Visible="False"></asp:BoundColumn>
                                <asp:ButtonColumn CommandName="view" Text="view"></asp:ButtonColumn>
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
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" 
                            Width="288px">
                            <Columns>
                                <asp:BoundColumn DataField="msg" HeaderText="Message"></asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="reply" runat="server" onclick="reply_Click" Text="REPLY" />
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table class="style1">
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style4">
                        To</td>
                    <td>
                        <asp:TextBox ID="to" runat="server" ></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="to" ErrorMessage=" !" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style4">
                        Message</td>
                    <td>
                        <asp:TextBox ID="msgs" runat="server" TextMode="MultiLine"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="msgs" ErrorMessage=" !" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="send" runat="server" Text="SEND" onclick="send_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

