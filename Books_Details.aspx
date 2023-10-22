<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Books_Details.aspx.cs" Inherits="ReaderZ_LMS.Book_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:DataList ID="DataList1" runat="server" CssClass="mt-3">
        <ItemTemplate>
            <section class="mt-3 pt-5">
                <div class="container px-4 px-lg-5 my-5">
                    <div class="row gx-4 gx-lg-5 align-items-center">
                        <div class="col mr-4">
                            <asp:Image ID="img" runat="server" Height="475px" Width="475px" ImageUrl='<%# Eval("Cover_Photo") %>' />
                        </div>
                        <div class="col">
                            <div class="small py-2">
                                BOOK ID : B -
                                <asp:Label ID="lablel1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </div>
                            <h1 class="display-5 fw-bolder">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Book_Name") %>'></asp:Label>
                            </h1>
                            <div class="fs-5">
                                <span>Author : 
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Author_Name") %>'></asp:Label>
                            </div>
                            <p class="lead py-2 mt-3">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </p>
                            <span class="d-block my-2">Available Copies :
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("No_of_Copies") %>'></asp:Label>
                                <span class="d-block my-2">Langauge :
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Language") %>'></asp:Label>
                                    <span class="d-block my-2">Tags :
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tags") %>'></asp:Label>

                                        <div class="d-flex py-4">
                                            <a class="btn btn-outline-dark flex-shrink-0" href="IssueBook_Form.aspx?ID=<%# Eval("ID") %>">Issue This Book</a>
                                        </div>
                        </div>
                    </div>
                </div>
            </section>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

