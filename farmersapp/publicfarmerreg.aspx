<%@ Page Title="" Language="C#" MasterPageFile="~/publicuser.master" AutoEventWireup="true" CodeFile="publicfarmerreg.aspx.cs" Inherits="_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 230px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
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
                Farmer ID</td>
            <td>
                <asp:TextBox ID="f_id" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Farmer name</td>
            <td>
                <asp:TextBox ID="f_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Gender</td>
            <td>
                <asp:RadioButton ID="f" runat="server" GroupName="a" Text="F" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="m" runat="server" GroupName="a" Text="M" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                District&nbsp;&nbsp; </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Calicut</asp:ListItem>
                    <asp:ListItem>Ernakulam</asp:ListItem>
                    <asp:ListItem>Kasargode</asp:ListItem>
                    <asp:ListItem>Kannur</asp:ListItem>
                    <asp:ListItem>Wayanad</asp:ListItem>
                    <asp:ListItem>Malapuram</asp:ListItem>
                    <asp:ListItem>Alapuzha</asp:ListItem>
                    <asp:ListItem>Pathanamthitta</asp:ListItem>
                    <asp:ListItem>Trissur</asp:ListItem>
                    <asp:ListItem>Thiruvanathapuram</asp:ListItem>
                    <asp:ListItem>Kottayam</asp:ListItem>
                    <asp:ListItem>Kollam</asp:ListItem>
                    <asp:ListItem>Palakad</asp:ListItem>
                    <asp:ListItem>Idukki</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Place</td>
            <td>
                <asp:TextBox ID="plac_e" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                House name</td>
            <td>
                <asp:TextBox ID="hm_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Contact number</td>
            <td>
                <asp:TextBox ID="cnt_no" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Email Id</td>
            <td>
                <asp:TextBox ID="email_id" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                password</td>
            <td>
                <asp:TextBox ID="pas_word" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                confirm password</td>
            <td>
                <asp:TextBox ID="cur_word" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="pas_word" ControlToValidate="cur_word" 
                    ErrorMessage="CompareValidator"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="reg" runat="server" onclick="reg_Click" Text="REGISTER" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
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
                &nbsp;</td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

