<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-xs-12">
                        <div class="media">
                            <div class="media-left media-middle">
                                <a href="#">
                                    <img class="media-object" src="<%#Eval("bill_sti") %>" alt="...">
                                </a>
                            </div>
                            <div class="media-body text-left">
                                <h4 class="media-heading"><%#Eval("film_navn") %></h4>
                                <p><%#kort(Eval("film_beskr")) %></p>
                                    <p style="font-size:x-large; color:#ffd800;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></p>
                            </div>
                            <br />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT billeder.bill_sti, film.film_navn, film.film_beskr FROM billeder INNER JOIN film ON billeder.fk_film_id = film.film_id"></asp:SqlDataSource>
</asp:Content>

