<%@ Page Title="" Language="C#" MasterPageFile="~/Reader_Z_Admin/admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ReaderZ_LMS.Reader_Z_Admin.index" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800 font-weight-bold">Dashboard</h1>
        </div>

        <!-- Content Row -->
        <div class="row">
            
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-info shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                    Issued Books
                                </div>
                                <div class="row no-gutters align-items-center">
                                    <div class="col-auto">
                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                            <asp:Literal ID="issuedBooks1" runat="server"></asp:Literal>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="progress progress-sm mr-2">
                                            <div class="progress-bar bg-info" role="progressbar"
                                                style="width: <asp:Literal ID="issuedBooks2" runat="server"></asp:Literal>%" aria-valuenow="50" aria-valuemin="0"
                                                aria-valuemax="100">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    Total Books
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    <asp:Literal ID="totalBooks" runat="server"></asp:Literal></div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-book fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-warning shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                    AudioBooks
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    <asp:Literal ID="totalAudiobooks" runat="server"></asp:Literal>
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-music fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                    E-Books
                                </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">
                                    <asp:Literal ID="totalEBooks" runat="server"></asp:Literal>
                                </div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-book fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--a Content Row -->

    </div>

    <div class="d-sm-flex align-items-center justify-content-between mt-3 mb-3">
         <h1 class="h3 ml-4 text-gray-800 font-weight-bold">Book Issue Requests</h1>
    </div>

    <section class="px-4">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" Width="100%" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Book_ID">
                    <ItemTemplate>
                        <a href="Books_Handler.aspx?ID=<%# Eval("Book_ID") %>"><asp:Label ID="Label2" runat="server" Text='<%# Eval("Book_ID") %>'></asp:Label></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User_ID">
                    <ItemTemplate>
                        <a href="Users_Handler.aspx?ID=<%# Eval("User_ID") %>"><asp:Label ID="Label3" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Issue_Date">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Issue_Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Return_Date">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Return_Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View Details">
                    <ItemTemplate>
                        <a href="Issue_Handler.aspx?ID=<%# Eval("ID") %>&OP=Manage">View Details</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </section>


    <div class="d-sm-flex align-items-center justify-content-between mt-5 mb-3">
         <h1 class="h3 ml-4 text-gray-800 font-weight-bold">About Online Library - Admin</h1>
    </div>

    <section class="px-4">
    
        <p>Lorem ipsum dolor sit amet. Qui soluta magni id dolor dolorum aut sunt natus est tempora perspiciatis qui harum libero non odit rerum? Qui aperiam pariatur eos repudiandae porro qui earum deleniti et sunt commodi sed odit incidunt. </p>
        <p>Non assumenda sequi et nisi commodi nam iure tempore qui tempore adipisci hic eius rerum sed sunt ducimus. Eum voluptatem unde sit galisum aliquam 33 sunt culpa! </p>
        <p>Qui recusandae corrupti est ipsa harum quo officiis ipsa qui possimus autem aut enim magnam a excepturi numquam non labore enim. Rem veritatis odio nam pariatur provident eos culpa repellendus sed temporibus internos. Sed facilis dicta ea tempore quisquam non dolores nobis id possimus similique. In dolore optio et beatae dolorem sit soluta doloremque in autem quia sit sint nesciunt est obcaecati debitis qui adipisci veritatis. </p>
        
    </section>


</asp:Content>
