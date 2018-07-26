<%@ Page Title="" Language="C#" MasterPageFile="~/agircultureofficer.master" AutoEventWireup="true" CodeFile="agricultureingmethod.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 296px;
        }
        .style4
        {
            width: 276px;
        }
        .style5
        {
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2">
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundColumn DataField="cropname" HeaderText="Crop name"></asp:BoundColumn>
                                <asp:BoundColumn DataField="cropid" HeaderText="cropid" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="cultureingmethod" HeaderText="culturing Method">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="weatherdetails" HeaderText="Weather Details">
                                </asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="add" runat="server" onclick="add_Click" Text="ADD" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        Crop Name</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        Culturing Method</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="upload" runat="server" Text="UPLOAD" onclick="upload_Click" />
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="FileUpload1" ErrorMessage=" !" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        Weather Details</td>
                    <td>
                        <asp:TextBox ID="weathr_details" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="save" runat="server" Text="SAVE" onclick="save_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

