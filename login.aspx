<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <asp:TextBox class="form-control" ID="txt_navn" runat="server" placeholder="Bruger Navn"></asp:TextBox>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-xs-12">
                <asp:TextBox class="form-control" ID="txt_password" runat="server" placeholder="Password"></asp:TextBox>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-xs-4 ">
                <asp:Button class="btn btn-default" ID="btn_login" runat="server" Text="Login" />

            </div>
            <div class="col-xs-4">
            </div>
            <div class="col-xs-4 col-xs-offset-2 ">
                <asp:LinkButton class="btn btn-default" ID="btn_create" runat="server" OnClick="btn_create_Click"><i class="fa fa-user-plus"></i> Opret bruger</asp:LinkButton>
            </div>

        </div>
    </div>
</asp:Content>

