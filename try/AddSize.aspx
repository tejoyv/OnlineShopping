<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSize.aspx.cs" Inherits="AddSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <br /><br /><h2>Add Size</h2>
            <hr />
            <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="SizeName" CssClass="col-md-2 control-label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                        &nbsp;<div class="col-md-3">
                        <asp:TextBox ID="txtSizeName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtSizeName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Brand" CssClass="col-md-2 control-label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="ddlBrand" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Category" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" onSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Sub Category" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlSubCat" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="ddlSubCat" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Gender" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="ddlGender" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                       
                        <asp:Button ID="btnAdd" runat="server" class="btn btn-success" Text="Add" OnClick="btnAdd_Click" />
                       
                    </div>
                </div>
        </div>
    </div>
     <br /><br /><br />
    <asp:Repeater ID="rptrSize" runat="server">
        <HeaderTemplate>
            <h1>All Size</h1>
    <hr />
    <div class="panel panel-default">
        <!--Default Panel contents-->
        <div class="panel-heading">Gender</div>
        <!--Table-->
        <table class="table">
            <thead>
                <tr>
                       <th>#</th>
                        <th>Size</th>
                        <th>Brand</th>
                       <th>Category</th>
                        <th>SubCategory</th>
                        <th>Gender</th>
                       <th>Edit</th>
                </tr>
            </thead>
            <tbody>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                    <td><%#Eval("SizeId")%>1</td>
                    <td><%#Eval("SizeName")%>1</td>
                    <td><%#Eval("Name") %></td>
                    <td><%#Eval("CatName") %></td>
                    <td><%#Eval("SubCatName")%>1</td>
                    <td><%#Eval("GenderName") %></td>
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

