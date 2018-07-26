<%@ Page Title="" Language="C#" MasterPageFile="~/agircultureofficer.master" AutoEventWireup="true" CodeFile="agrinotification.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                    Width="279px">
                    <Columns>
                        <asp:BoundColumn DataField="title" HeaderText="Title"></asp:BoundColumn>
                        <asp:BoundColumn DataField="notdate" HeaderText="Date"></asp:BoundColumn>
                        <asp:BoundColumn DataField="notdet" HeaderText="Details"></asp:BoundColumn>
                    </Columns>
                </asp:DataGrid>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="REFRESH" />
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

