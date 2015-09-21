<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="liste.aspx.cs" Inherits="liste" %>

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
                                    <img class="media-object" src="<%#Eval("bill_sti") %>" style="height: 80px; width: 65px;" alt="...">
                                </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading"><%#Eval("film_navn") %></h4>
                               </div>  
                            <br />   
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT billeder.bill_sti, film.film_navn FROM billeder INNER JOIN film ON billeder.fk_film_id = film.film_id INNER JOIN genre ON film.fk_genre_id = genre.genre_Id"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>



