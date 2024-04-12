<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="QLXe.aspx.cs" Inherits="BaiDuAn.QLThuCung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="DSSP" runat="server" ConnectionString="<%$ ConnectionStrings:QLXeConnectionString %>" DeleteCommand="DELETE FROM [Xe] WHERE [MaXe] = @MaXe" InsertCommand="INSERT INTO [Xe] ([TenXe], [AnhBia], [Ngaycapnhat], [Soluotxem], [MaDongXe], [MaNSX], [Mota], [Dongia]) VALUES (@TenXe, @AnhBia, @Ngaycapnhat, @Soluotxem, @MaDongXe, @MaNSX, @Mota, @Dongia)" SelectCommand="SELECT [MaXe], [TenXe], [AnhBia], [Ngaycapnhat], [Soluotxem], [MaDongXe], [MaNSX], [Mota], [Dongia] FROM [Xe]" UpdateCommand="UPDATE [Xe] SET [TenXe] = @TenXe, [AnhBia] = @AnhBia, [Ngaycapnhat] = @Ngaycapnhat, [Soluotxem] = @Soluotxem, [MaDongXe] = @MaDongXe, [MaNSX] = @MaNSX, [Mota] = @Mota, [Dongia] = @Dongia WHERE [MaXe] = @MaXe">
        <DeleteParameters>
            <asp:Parameter Name="MaXe" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenXe" Type="String" />
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="Ngaycapnhat" Type="DateTime" />
            <asp:Parameter Name="Soluotxem" Type="Int32" />
            <asp:Parameter Name="MaDongXe" Type="Int32" />
            <asp:Parameter Name="MaNSX" Type="Int32" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="Dongia" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenXe" Type="String" />
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="Ngaycapnhat" Type="DateTime" />
            <asp:Parameter Name="Soluotxem" Type="Int32" />
            <asp:Parameter Name="MaDongXe" Type="Int32" />
            <asp:Parameter Name="MaNSX" Type="Int32" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="Dongia" Type="Double" />
            <asp:Parameter Name="MaXe" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="dvSP" runat="server" AutoGenerateColumns="False" DataKeyNames="MaXe" DataSourceID="DSSP" Width="1412px"  class=mt-5 CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
           
            <asp:BoundField DataField="TenXe" HeaderText="TenXe" SortExpression="TenXe" ReadOnly="True" />
            <asp:ImageField DataImageUrlField="AnhBia" DataImageUrlFormatString="Hinh/{0}" HeaderText="Ảnh sản phẩm" ControlStyle-Width="100px" ControlStyle-CssClass="" ReadOnly="True" >
<ControlStyle Width="100px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="Dongia" HeaderText="Dongia" SortExpression="Dongia" />
            <asp:BoundField DataField="Ngaycapnhat" HeaderText="Ngaycapnhat" SortExpression="Ngaycapnhat" />
            <asp:BoundField DataField="Soluotxem" HeaderText="Soluotxem" SortExpression="Soluotxem" />
             <asp:TemplateField ItemStyle-Wrap="false">
                 <ItemTemplate>
                     <asp:Button ID="btSua" runat="server" CssClass="btn btn-success" CommandName="Edit" Text="Sửa" />
                     <asp:Button ID="btXoa" OnClientClick="return confirm('Bạn có muốn xoá sách này?')" runat="server" CssClass="btn btn-danger" CommandName="Delete" Text="Xoá" />
                 </ItemTemplate>
                <EditItemTemplate>
                       <asp:Button ID="btCapnhat" runat="server" CssClass="btn btn-success" CommandName="Update" Text="Ghi" />
                       <asp:Button ID="btKhong" runat="server" CssClass="btn btn-warning" CommandName="Cancel" Text="Không" />
                </EditItemTemplate>
          <ItemStyle Wrap="False"></ItemStyle>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    
</asp:Content>
