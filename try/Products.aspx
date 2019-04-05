<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="row" style="padding-top:50px">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a style="text-decoration:none;" href="ProductView.aspx?PID=<%#Eval("PID")%>">
            <div class="thumbnail">
                <img src="images/ProductImages/<%#Eval("PID") %>/<%#Eval("ImageName")%><%#Eval("Extension")%>" alt="shirt" width="250px" height="250px"/>
                <div class="caption">
                    <div style="font-size:15px;font-weight:550;line-height:15px;text-transform:uppercase;text-align:center"><br><%#Eval("BrandName") %></div>
                    <div style="font-size:13px;line-height:16px;text-align:center"><%#Eval("PName") %></div>
                    <div style="font-size: 14px;line-height: 17px;font-weight:500;text-align:center"><span style="font-size: 13px;font-weight: 400;text-decoration:line-through;color:gray;"><%#Eval("PPrice") %></span><%#Eval("PSelPrice") %><span style="font-size: 13px;font-weight: 400;color: deeppink;">(<%#Eval("DiscAmount") %> Off)</span></div>
                </div>
            </div>
                </a>
        </div>
                </ItemTemplate>
            </asp:Repeater>
    </div>
</asp:Content>

