<%@ Page Title="" Language="C#" MasterPageFile="~/administrator.master" AutoEventWireup="true" CodeFile="admincrop.aspx.cs" Inherits="_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 267px;
    }
    .style5
    {
        width: 305px;
    }
</style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <table class="style1">
            <tr>
                <td>
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                        onitemcommand="DataGrid1_ItemCommand">
                        <Columns>
                            <asp:BoundColumn DataField="croptype" HeaderText="croptype"></asp:BoundColumn>
                            <asp:BoundColumn DataField="cropclass" HeaderText="crop class">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="cropname" HeaderText="crop name"></asp:BoundColumn>
                            <asp:TemplateColumn>
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" Height="110px" 
                                        ImageUrl='<%# Eval("image") %>' />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="image" Visible="False"></asp:BoundColumn>
                            <asp:ButtonColumn Text="edit" CommandName="edit"></asp:ButtonColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="add" runat="server" Text="ADD" onclick="add_Click" />
                </td>
            </tr>
            <tr>
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
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    photo</td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="109px" Width="106px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="upload" runat="server" Height="27px" Text="UPLOAD" 
                        Width="91px" onclick="upload_Click" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    Crop Type</td>
                <td>
                    <asp:TextBox ID="crty" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="crty" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    Crop Class</td>
                <td>
                    <asp:TextBox ID="crc" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="crc" ErrorMessage="!" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    Crop Name</td>
                <td>
                    <asp:TextBox ID="crn" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="crn" ErrorMessage=" !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    Crop Details</td>
                <td>
                    <asp:TextBox ID="cd" runat="server" TextMode="MultiLine"></asp:TextBox>
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

