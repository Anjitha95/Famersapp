<%@ Page Title="" Language="C#" MasterPageFile="~/agircultureofficer.master" AutoEventWireup="true" CodeFile="agricropferti.aspx.cs" Inherits="_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 321px;
        }
        .style9
        {
            width: 48px;
        }
        .style10
        {
            width: 255px;
        }
        .style11
        {
            width: 185px;
        }
        .style13
        {
            width: 186px;
        }
        .style15
        {
            width: 257px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style8">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Crop Details&nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fertilizer Details&nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            Height="552px" onitemcommand="DataGrid1_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="cropid" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="croptype" HeaderText="Crop Type"></asp:BoundColumn>
                                <asp:BoundColumn DataField="cropclass" HeaderText="Crop Class">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="cropname" HeaderText="Crop Name"></asp:BoundColumn>
                                <asp:BoundColumn DataField="image" Visible="False"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="85px" 
                                            ImageUrl='<%# Eval("image") %>' Width="76px" />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:ButtonColumn CommandName="edit" Text="edit"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="delete" Text="delete"></asp:ButtonColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid2_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="fertid" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="fertnme" HeaderText="Fertilizer Name">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="usedin" HeaderText="used In"></asp:BoundColumn>
                                <asp:BoundColumn DataField="image" Visible="False"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="102px" 
                                            ImageUrl='<%# Eval("image") %>' Width="78px" />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:ButtonColumn CommandName="edit" Text="edit"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="delete" Text="delete"></asp:ButtonColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="add" runat="server" Text="ADD" onclick="add_Click" />
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="add1" runat="server" Text="ADD" onclick="add1_Click" />
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        Crop Details</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        Photo</td>
                    <td>
                        <asp:Image ID="Image3" runat="server" Height="92px" Width="74px" />
                        &nbsp;&nbsp;
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="save" runat="server" Text="UPLOAD" onclick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        Crop Type</td>
                    <td>
                        <asp:TextBox ID="crty" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="crty" ErrorMessage="!" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        Crop Class</td>
                    <td>
                        <asp:TextBox ID="crc" runat="server"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="crc" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        Crop Name</td>
                    <td>
                        <asp:TextBox ID="crn" runat="server"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="crn" ErrorMessage=" !" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        Details</td>
                    <td>
                        <asp:TextBox ID="dt" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="save1" runat="server" onclick="save1_Click" Text="SAVE" />
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table class="style1">
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        Fertilizer Details</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        Image</td>
                    <td>
                        <asp:Image ID="Image4" runat="server" Height="91px" Width="82px" />
                        &nbsp;
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                            Text="UPLOAD" />
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        Fertilizer Name</td>
                    <td>
                        <asp:TextBox ID="fn" runat="server"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="fn" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        Used For</td>
                    <td>
                        <asp:TextBox ID="usdf" runat="server" TextMode="MultiLine"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="usdf" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="save2" runat="server" onclick="save2_Click" Text="SAVE" />
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
</asp:MultiView>
</asp:Content>

