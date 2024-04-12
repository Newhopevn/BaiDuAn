<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="XemXe.aspx.cs" Inherits="BaiDuAn.XemXe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="text-center">Danh sách Xe</h2>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="DSdong" OnItemCommand="Repeater1_ItemCommand" ></asp:Repeater>
    <div class="row mt-3">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="DSxe">
            <ItemTemplate>
                <div class=" col-md-3 mt-2 text-center">
                    <a href="#">
                        <img src="Hinh/<%# Eval("AnhBia") %>"style="max-width: 100%;height: 175px;object-fit:cover;width:100%"/>
                    </a>
                    <br />
                    <%# Eval("TenXe") %><br/>
                    Giá bán: <span class="price"><%# Eval("Dongia","{0:#,##0} VNĐ") %></span><br/>
                    <asp:Button ID="btnAddToCard" runat="server" Text="Add To Card" class="btn btn-success"/>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
    
    

    <asp:SqlDataSource ID="DSdong" runat="server" ConnectionString="<%$ ConnectionStrings:QLXeConnectionString %>" SelectCommand="SELECT * FROM [DongXe]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DSxe" runat="server" ConnectionString="<%$ ConnectionStrings:QLXeConnectionString %>" SelectCommand="SELECT * FROM [Xe]">
    </asp:SqlDataSource>
</asp:Content>
