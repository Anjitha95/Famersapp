<%@ Page Title="" Language="C#" MasterPageFile="~/agircultureofficer.master" AutoEventWireup="true" CodeFile="agriverifyfarmer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 218px;
        }
        .style3
        {
            width: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Farmer Name</td>
            <td>
                <asp:TextBox ID="fname" runat="server" ></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="fname" ErrorMessage=" !" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="search" runat="server" Text="SEARCH" onclick="search_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
                        <asp:BoundColumn DataField="place" HeaderText="Place"></asp:BoundColumn>
                        <asp:BoundColumn DataField="contactno" HeaderText="contact number">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="surveyno" HeaderText="Survey number">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="area" HeaderText="Area"></asp:BoundColumn>
                        <asp:BoundColumn DataField="type" HeaderText="LandType"></asp:BoundColumn>
                    </Columns>
                </asp:DataGrid>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

