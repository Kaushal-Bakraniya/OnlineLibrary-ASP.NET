<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ReaderZ_LMS.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner" id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-content">
                        <div class="thumb">
                            <div class="inner-content">
                                <h4>We Are Reader Z</h4>
                                <span>Online Readers Community By ReaderZ Foundation</span>
                                <div class="main-border-button">
                                    <a href="AboutUs.aspx">Know More</a>
                                </div>
                            </div>
                            <img src="assets/images/Index_page/ReaderZ.jpg" alt="" height="535px">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="right-content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>Books</h4>
                                            <span>Find Top Trending Books</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Books</h4>
                                                <p>Lorem ipsum dolor sit amet, conservisii ctetur adipiscing elit incid.</p>
                                                <div class="main-border-button">
                                                    <a href="Books.aspx">Discover More</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/Index_page/Book.jpg" height="254">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>E - Books</h4>
                                            <span>Download & Read E - Books</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>E-Books</h4>
                                                <p>Lorem ipsum dolor sit amet, conservisii ctetur adipiscing elit incid.</p>
                                                <div class="main-border-button">
                                                    <a href="EBooks.aspx">Discover More</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/Index_page/EBook.jpg" height="254">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>Audio Books</h4>
                                            <span>Listen To Amazing Audio Books</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Audio Books</h4>
                                                <p>Lorem ipsum dolor sit amet, conservisii ctetur adipiscing elit incid.</p>
                                                <div class="main-border-button">
                                                    <a href="AudioBooks.aspx">Discover More</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/Index_page/AudioBooks.jpg" height="254">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>About Us</h4>
                                            <span>Know About Reader Z Foundation</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>About Us</h4>
                                                <p>Lorem ipsum dolor sit amet, conservisii ctetur adipiscing elit incid.</p>
                                                <div class="main-border-button">
                                                    <a href="AboutUs.aspx">Discover More</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/Index_page/AboutUs.jpg" height="254">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <section class="section" id="men">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>Trending Books</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="men-item-carousel">
                        <div>
                            <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="3">
                                <ItemTemplate>
                                    <div class="item pb-5 pr-5">
                                        <div class="thumb">
                                            <div class="hover-content">
                                                <ul>
                                                    <li><a href="Books_Details.aspx?ID=<%# Eval("ID") %>"><i class="fa fa-eye"></i></a></li>
                                                    <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <asp:Image ID="img" runat="server" Height="370px" Width="350px" ImageUrl='<%# Eval("Cover_Photo") %>' />
                                        </div>
                                        <div class="down-content">
                                            <asp:Label ID="lblBookName" runat="server" Text='<%# Eval("Book_Name") %>' Style="font-weight: bold; font-size: 25px; color: black"></asp:Label>
                                            <span>By <asp:Literal ID="lblAuthorName" runat="server" Text='<%# Eval("Author_Name") %>'></asp:Literal></span>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
                <p class="text-center" style="margin-bottom: -50px; font-size: 25px"><a href="Books.aspx"><b>Find More Books</a></b></p>
            </div>
    </section>
    <!-- Trending Books Area Ends -->

    <!-- Audio Books Section Starts -->
    <section class="section" id="men">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>Amazing AudioBooks</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="men-item-carousel">
                        <div>
                            <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                                <ItemTemplate>
                                    <div class="item pb-5 pr-5">
                                        <div class="thumb">
                                            <div class="hover-content">
                                                <ul>
                                                    <li><a href="AudioBooks_Details.aspx?ID=<%# Eval("ID") %>" target="_blank"><i class="fa fa-eye"></i></a></li>
                                                    <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <asp:Image ID="img" runat="server" Height="370px" Width="350px" ImageUrl='<%# Eval("Cover_Photo") %>' />
                                        </div>
                                        <div class="down-content">
                                            <h4>
                                                <asp:Label ID="lblBookName" runat="server" Text='<%# Eval("AudioBook_Name") %>' Style="font-weight: bold; font-size: 25px; color: black"></asp:Label>
                                            </h4>
                                            <span>By <asp:Literal ID="lblAuthorName" runat="server" Text='<%# Eval("Author_Name") %>'></asp:Literal></span>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
            <p class="text-center" style="margin-bottom: -50px; font-size: 25px"><a href="AudioBooks.aspx"><b>Find More AudioBooks</a></b></p>
        </div>
    </section>
    <!-- Audio Books Section Ends -->

    <!-- E-Books Section Starts -->
    <section class="section" id="men">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>Trending E-Books</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div>
                        <asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                            <ItemTemplate>
                                <div class="item pb-5 pr-5">
                                    <div class="thumb">
                                        <div class="hover-content">
                                            <ul>
                                                <li><a href="EBooks_Details.aspx?ID=<%# Eval("ID") %>" target="_blank"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                                <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <asp:Image ID="img" runat="server" Height="370px" Width="350px" ImageUrl='<%# Eval("Cover_Photo") %>' />
                                    </div>
                                    <div class="down-content">
                                        <h4>
                                            <asp:Label ID="lblBookName" runat="server" Text='<%# Eval("EBook_Name") %>' Style="font-weight: bold; font-size: 25px; color: black"></asp:Label>
                                        </h4>
                                        <span>By <asp:Literal ID="lblAuthorName" runat="server" Text='<%# Eval("Author_Name") %>'></asp:Literal></span>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </div>
            <p class="text-center" style="margin-bottom: -50px; font-size: 25px"><a href="EBooks.aspx"><b>Find More E-Books</a></b></p>
        </div>
    </section>
    <!-- E-Books Section Ends -->

</asp:Content>

