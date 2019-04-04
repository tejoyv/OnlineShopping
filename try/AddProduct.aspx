﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <br /><br /><h2>Add Product</h2>
            <hr />
            <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Name" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtPName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Price" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Selling Price" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSelPrice" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtSelPrice"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Brand" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlBrands" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="ddlBrands" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Category" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Sub Category" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlSubCategory" onSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="ddlSubCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
            <asp:Label ID="Label15" runat="server" Text="Gender" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlGender" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="ddlGender" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Size" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                       <asp:CheckBoxList ID="cblSize" CssClass="form-control" runat="server" RepeatDirection="Horizontal"></asp:CheckBoxList>                   
                    </div>
                </div>
             <div class="form-group">
            <asp:Label ID="Label16" runat="server" Text="Quantity" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtPName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Description" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtDesc" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Product Details" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPDetails" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtPDetails"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="Material and Care" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtMatCare" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtMatCare"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Upload Image" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg01" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="fuImg01"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
            <asp:Label ID="Label12" runat="server" Text="Upload Image" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg02" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="fuImg02"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
            <asp:Label ID="Label13" runat="server" Text="Upload Image" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg03" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="fuImg03"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
            <asp:Label ID="Label14" runat="server" Text="Upload Image" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg04" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="fuImg04"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                      &nbsp  &nbsp &nbsp  <asp:Button ID="btnAdd" runat="server" class="btn btn-success" Text="Add" OnClick="btnAdd_Click" />
                    </div>
                </div>
        </div>
    </div>
</asp:Content>

