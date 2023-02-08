<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="KullaniciAnasayfa.aspx.cs" Inherits="WebApplication1.KullaniciAnasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <main role="main">
        <asp:Repeater ID="filmDuyurusu2" runat="server">
            <HeaderTemplate>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            </HeaderTemplate>
            <ItemTemplate>
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">

                    <div class="carousel-item active">
                        <img src="images/filmduyuru.jpg" class="d-block w-100" alt="..." id="duyuru">
                        <asp:Label ID="filmDuyuru" runat="server" Text='<%#Eval("duyuruIcerik") %>' class="d-block w-100"></asp:Label>
                    </div>
                    <div class="carousel-item">
                        <img src="images/filmduyuru.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="images/filmduyuru.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Repeater ID="filmDuyurusu" runat="server">
            <HeaderTemplate>
                <section class="jumbotron text-center">
            </HeaderTemplate>
            <ItemTemplate>
                <div class="container">
                    <h1 class="jumbotron-heading"><%#Eval("duyuruIcerik") %></h1>
                    <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don't simply skip over it entirely.</p>
                    <p>
                        <a href="#" class="btn btn-primary my-2">Main call to action</a>
                        <a href="#" class="btn btn-secondary my-2">Secondary action</a>
                    </p>
                </div>
            </ItemTemplate>
            <FooterTemplate>
                </section>
            </FooterTemplate>
        </asp:Repeater>
        <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
            <HeaderTemplate>
                <div class="album py-5 bg-light">
                    <div class="container">
                        <div class="row">
            </HeaderTemplate>
            <ItemTemplate>
                <%--   <div class="album py-5 bg-light">
                    <div class="container">
                        <div class="flex-row">--%>
                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top" src='<%#Eval("FilmResim")%>.jpg' alt="Card image cap">
                        <div class="card-body">
                            <p class="card-header"><%#Eval("FilmAdi") %></p>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="filmDetay" CommandArgument='<%#Eval("FilmId") %>'>Film Detay</asp:LinkButton>
                            <%--<asp:LinkButton ID="lnkfilmAc" runat="server" CommandName="filmDetay" CommandArgument='<%#Eval("FilmId") %>'>Film Detay</asp:LinkButton>--%>
                            <%--      <p class="card-text"><%#Eval("Konusu") %></p>--%>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                    <a href="#exampleModal" data-toggle="modal" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <asp:Button runat="server" ID="lnkUploadPics" CssClass=" btn-large Greengradiant"
                                            Width="100%" Text="Detay" OnClick="lnkUploadPics_Click"></asp:Button>
                                    </a>

                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="col-md-4">
                                <div class="card mb-4 box-shadow">
                                    <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-header"><%#Eval("FilmAdi") %></p>
                                        <p class="card-text"><%#Eval("Konusu") %></p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                            </div>
                                            <small class="text-muted">9 mins</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card mb-4 box-shadow">
                                    <img class="card-img-top" src="images/adadsad.jpg" data-src="images/adadsad.jpg/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-header"><%#Eval("FilmAdi") %></p>
                                        <p class="card-text"><%#Eval("Konusu") %></p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                            </div>
                                            <small class="text-muted">9 mins</small>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                <%--  </div>
                    </div>--%>
            </ItemTemplate>
            <FooterTemplate>
                </div>
                </div>
                </div>
            </FooterTemplate>
        </asp:Repeater>
        <%-- <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <rows>

                    <columns span="2">

                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow">
                                <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                                <div class="card-body">
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("FilmAdi") %>'></asp:Label>
                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                            <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                        </div>
                                        <small class="text-muted">9 mins</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </columns>

                </rows>

            </ItemTemplate>
        </asp:Repeater>
        <div class="album py-5 bg-light">
            <div class="container">


                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("FilmId") %>'></asp:Label>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="images/adadsad.jpg" data-src="images/adadsad.jpg/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="images/adadsad.jpg" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>


        <div class="fade modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                <div class="modal-content">

                    <!-- Header -->
                    <div class="modal-header">
                        <h2 class="modal-title" id="filmAdi"><%#Eval("FilmAdi") %></h2>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">View Person</h4>
                    </div>

                    <!-- Body -->
                    <div id="personDetails"  class="modal-body">

                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Konusu</h5>
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Konusu") %>'></asp:Label>
                                <%-- <p id="FilmKonusu" class="card-text">
                                            <%#Eval("Konusu") %>
                                        </p>--%>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <asp:Button ID="Button1" runat="server" Text="Button" CommandName="Close" UseSubmitBehavior="false" />
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                $("#exampleModal").modal({
                    keyboard: true,
                    backdrop: "static",
                    show: false,

                }).on("show.bs.modal", function (event) {
                    var button = $(event.relatedTarget); // button the triggered modal
                    var filmId = button.data("FilmId"); //data-id of button which is equal to id (primary key) of person
                    /* 
                    Although below is working to get and display values for id (personId), 
                    it is recommended that they be fetched via ajax ($.ajax()) that queries data 
                    from database based on personId
                    */
                    var lastName = $(event.relatedTarget).closest("tr").find("td:eq(1)").text();
                    var firstName = $(event.relatedTarget).closest("tr").find("td:eq(2)").text();

                    //displays values to modal
                    $(this).find("#personDetails").html($("<b>ID: " + filmId + "<br>Last Name: " + lastName + "<br>First Name: " + firstName + "</b>"))
                }).on("hide.bs.modal", function (event) {
                    $(this).find("#personDetails").html("");
                });
            });
        </script>

    </main>


</asp:Content>
