<%@ Page Title="" Language="C#" MasterPageFile="~/administrator.master" AutoEventWireup="true" CodeFile="adminaoreg.aspx.cs" Inherits="_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 289px;
        }
        .style4
        {
            width: 250px;
        }
        .style5
        {
            width: 250px;
            height: 156px;
        }
        .style6
        {
            width: 289px;
            height: 156px;
        }
        .style7
        {
            height: 156px;
        }
        .style8
        {
            width: 250px;
            height: 35px;
        }
        .style9
        {
            width: 289px;
            height: 35px;
        }
        .style10
        {
            height: 35px;
        }
        .style11
        {
            width: 250px;
            height: 32px;
        }
        .style12
        {
            width: 289px;
            height: 32px;
        }
        .style13
        {
            height: 32px;
        }
        .style14
        {
            width: 250px;
            height: 37px;
        }
        .style15
        {
            width: 289px;
            height: 37px;
        }
        .style16
        {
            height: 37px;
        }
        .style17
        {
            width: 250px;
            height: 36px;
        }
        .style18
        {
            width: 289px;
            height: 36px;
        }
        .style19
        {
            height: 36px;
        }
        .style20
        {
            width: 250px;
            height: 38px;
        }
        .style21
        {
            width: 289px;
            height: 38px;
        }
        .style22
        {
            height: 38px;
        }
        .style23
        {
            width: 250px;
            height: 39px;
        }
        .style24
        {
            width: 289px;
            height: 39px;
        }
        .style25
        {
            height: 39px;
        }
        .style29
        {
            width: 250px;
            height: 42px;
        }
        .style30
        {
            width: 289px;
            height: 42px;
        }
        .style31
        {
            height: 42px;
        }
        .style32
        {
            width: 250px;
            height: 49px;
        }
        .style33
        {
            width: 289px;
            height: 49px;
        }
        .style34
        {
            height: 49px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <table class="style1" style="height: 291px">
            <tr>
                <td>
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                        onitemcommand="DataGrid1_ItemCommand">
                        <Columns>
                            <asp:BoundColumn DataField="name" HeaderText="name"></asp:BoundColumn>
                            <asp:BoundColumn DataField="emailid" HeaderText="email ID"></asp:BoundColumn>
                            <asp:BoundColumn DataField="phoneid" HeaderText="phone ID"></asp:BoundColumn>
                            <asp:BoundColumn DataField="DOJ" HeaderText="Date of join"></asp:BoundColumn>
                            <asp:BoundColumn DataField="DOB" HeaderText="Date of birth"></asp:BoundColumn>
                            <asp:BoundColumn DataField="DOR" HeaderText="Date of Resign"></asp:BoundColumn>
                            <asp:BoundColumn DataField="ID" HeaderText="ID"></asp:BoundColumn>
                            <asp:BoundColumn DataField="photo" Visible="False"></asp:BoundColumn>
                            <asp:TemplateColumn>
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" Height="107px" 
                                        ImageUrl='<%# Eval("photo") %>' Width="123px" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
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
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="add" runat="server" Text="ADD" onclick="Button1_Click" 
                        Width="73px" />
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
                    &nbsp;</td>
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
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                </td>
                <td class="style6">
                    Photo</td>
                <td class="style7">
                    <asp:Image ID="Image1" runat="server" Height="96px" Width="100px" />
                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                    &nbsp;
                    <asp:Button ID="upload" runat="server" onclick="upload_Click" Text="UPLOAD" />
                </td>
            </tr>
            <tr>
                <td class="style8">
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                </td>
                <td class="style12">
                    Krishibhavan</td>
                <td class="style13">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style14">
                </td>
                <td class="style15">
                    Name</td>
                <td class="style16">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="name" ErrorMessage=" !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                </td>
                <td class="style18">
                    Gender</td>
                <td class="style19">
                    <asp:RadioButton ID="f" runat="server" GroupName="a" Text="F" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="m" runat="server" GroupName="a" Text="M" />
                </td>
            </tr>
            <tr>
                <td class="style20">
                </td>
                <td class="style21">
                    Date Of Birth</td>
                <td class="style22">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style17">
                </td>
                <td class="style18">
                    Date of Joining</td>
                <td class="style19">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:DropDownList ID="DropDownList6" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:DropDownList ID="DropDownList7" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style23">
                </td>
                <td class="style24">
                    Date of Resignation</td>
                <td class="style25">
                    <asp:DropDownList ID="DropDownList8" runat="server">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList9" runat="server">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList10" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style29">
                </td>
                <td class="style30">
                    Email ID</td>
                <td class="style31">
                    <asp:TextBox ID="em_l" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="em_l" ErrorMessage=" !" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style32">
                </td>
                <td class="style33">
                    Phone Number
                </td>
                <td class="style34">
                    <asp:TextBox ID="Ph_ne" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="Ph_ne" ErrorMessage=" !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="save" runat="server" onclick="save_Click" Text="SAVE" 
                        Width="103px" />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
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

