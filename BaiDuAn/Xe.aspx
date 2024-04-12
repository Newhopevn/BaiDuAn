<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="Xe.aspx.cs" Inherits="BaiDuAn.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Danh sách Xe</h2>
     <div class="form-inline">
        chọn danh mục:<asp:DropDownList ID="drdong" runat="server" AutoPostBack="True" DataSourceID="DSdong" DataTextField="TenDongXe" DataValueField="MaDongXe">
             <asp:ListItem>Tất cả</asp:ListItem>
         </asp:DropDownList>
        </div>
    <div class="row mt-3">
        <asp:Repeater ID="rqtXe" runat="server" DataSourceID="dsXe">
            <ItemTemplate>
                <div class=" col-md-3 mt-2 text-center">
                    <a href="#">
                        <img src="Hinh/<%# Eval("AnhBia") %>"style="max-width: 100%;height: 175px;object-fit:cover;width:100%"/>
                    </a>
                    <br />
                    <%# Eval("TenXe") %><br/>
                    Giá bán: <span class="price"><%# Eval("Dongia","{0:#,##0} VNĐ") %></span><br/>
                    <asp:Button ID="btAddToCart" runat="server" CssClass="btn btn-info"
                        Text="Thêm vào giỏ" CommandArgument='<%# Eval("MaXe") %>'
                        OnClick="btAddToCart_Click" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    
    

    <asp:SqlDataSource ID="DSdong" runat="server" ConnectionString="<%$ ConnectionStrings:QLXeConnectionString %>" SelectCommand="SELECT * FROM [DongXe]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="DSxe" runat="server" ConnectionString="<%$ ConnectionStrings:QLXeConnectionString %>" SelectCommand="SELECT * FROM [Xe] WHERE ([MaDongXe] = @MaDongXe)">
        <SelectParameters>
            <asp:ControlParameter ControlID="drdong" Name="MaDongXe" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>
