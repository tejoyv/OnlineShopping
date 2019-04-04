<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="form-horizontal">
            <br /><br /><h2>Add Category</h2>
            <hr />
            <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Add Category" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtCatName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtCatName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                      &nbsp  &nbsp &nbsp  
                        <asp:Button ID="btnAdd" runat="server" class="btn btn-success" Text="Add" OnClick="btnAdd_Click" />
                    </div>
                </div>
        </div>
    </div>
    <br /><br /><br />
    <asp:Repeater ID="rptrCategory" runat="server">
        <HeaderTemplate>
            <h1>Categories</h1>
    <hr />
    <div class="panel panel-default">
        <!--Default Panel contents-->
        <div class="panel-heading">All Categories</div>
        <!--Table-->
        <table class="table">
            <thead>
                <tr>
                       <th>#</th>
                       <th>Category</th>
                       <th>Edit</th>
                </tr>
            </thead>
            <tbody>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                    <td><%#Eval("CatId")%>1</td>
                    <td><%#Eval("CatName") %></td>
                    <td>Edit</td>
                </tr>
        </ItemTemplate>
        <FooterTemplate>
             </tbody>
        </table>
        </FooterTemplate>
    </asp:Repeater>
    </div>
</asp:Content>


