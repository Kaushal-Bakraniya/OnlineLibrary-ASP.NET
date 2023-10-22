<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EBooks_Details.aspx.cs" Inherits="ReaderZ_LMS.EBooks_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:DataList ID="DataList1" runat="server" CssClass="mt-3" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <section class="mt-3 pt-5">
                <div class="container px-4 px-lg-5 my-5">
                    <div class="row gx-4 gx-lg-5 align-items-center">
                        <div class="col mr-4">
                            <asp:Image ID="img" runat="server" Height="475px" Width="475px" ImageUrl='<%# Eval("Cover_Photo") %>' />
                        </div>
                        <div class="col">
                            <div class="small py-2">
                                BOOK ID : EB -
                                <asp:Label ID="lablel1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </div>
                            <h1 class="display-5 fw-bolder">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("EBook_Name") %>'></asp:Label>
                            </h1>
                            <div class="fs-5">
                                <span>Author : 
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Author_Name") %>'></asp:Label>
                            </div>
                            <p class="lead py-2 mt-3">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </p>
                            <span class="d-block my-2">Downloads :
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Downloads") %>'></asp:Label></span>
                            <span class="d-block my-2">Langauge :
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Language") %>'></asp:Label></span>
                            <span class="d-block my-2">Tags :
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tags") %>'></asp:Label></span>
                            <div class="d-flex py-4">
                                <a href="<%# Eval("PDF_File") %>" id="lbtnRead" class="btn btn-outline-dark flex-shrink-0" target="_blank">Read This E-Book</a><br />
                            </div>
                            <div class="d-flex py-1">
                                <div class="d-flex py-1">
                                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-dark flex-shrink-0" CommandArgument='<%# Eval("ID") %>' CommandName="cmd_download">Download This E-Book</asp:LinkButton>

                                </div>
                            </div>
                        </div>
                    </div>
            </section>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
