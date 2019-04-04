<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddGender.aspx.cs" Inherits="AddGender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <br /><br /><h2>Add Gender</h2>
            <hr />
            <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Gender Name" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtGenderName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required !" cssClass="text-danger" ControlToValidate="txtGenderName"></asp:RequiredFieldValidator>
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
    <asp:Repeater ID="rptrGender" runat="server">
        <HeaderTemplate>
            <h1>Gender</h1>
    <hr />
    <div class="panel panel-default">
        <!--Default Panel contents-->
        <div class="panel-heading">Gender</div>
        <!--Table-->
        <table class="table">
            <thead>
                <tr>
                       <th>#</th>
                       <th>Gender</th>
                       <th>Edit</th>
                </tr>
            </thead>
            <tbody>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                    <td><%#Eval("GenderId")%>1</td>
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

