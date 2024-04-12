<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BaiDuAn.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link href="Scripts/css/dangnhap.css" rel="stylesheet" />
    <section class="h-100">
		<div class="container h-100 align-center mt-5">
			<div class="row justify-content-sm-center h-100">
				<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
					
					<div class="card shadow-lg">
						<div class="card-body p-5">
							<h1 class="fs-6 card-title fw-bold mb-4">Đăng nhập</h1>
							<form method="POST" class="needs-validation" novalidate="" autocomplete="off">
								<div class="mb-3">
									<label class="mb-2 text-muted" for="email">E-Mail</label>
									<asp:TextBox id="TENTK" type="email" class="form-control" name="email" value="" required autofocus runat="server"></asp:TextBox>
									<div class="invalid-feedback">
										Email is invalid
									</div>
								</div>

								<div class="mb-3">
									<div class="mb-2 w-100">
										<label class="text-muted" for="password">Mật khẩu</label>
										<a href="forgot.html" class="float-end">
											Quên mật khẩu?
										</a>
									</div>
									<asp:TextBox id="MKHAU" type="password" class="form-control" name="password" required runat="server"></asp:TextBox>
								    <div class="invalid-feedback">
								    	Password is required
							    	</div>
								</div>

								

								<div class="d-flex align-items-center">
									<div class="form-check">
										<input type="checkbox" name="remember" id="remember" class="form-check-input">
										<label for="remember" class="form-check-label">Quyền ADMIN</label>
									</div>	
								</div>
								<asp:button type="submit" id="submit" class="btn btn-primary ms-auto" onclick="btnDangNhap_Click" runat="server" Text="Login">
									
									</asp:button>
							</form>
						</div>
						<div class="card-footer py-3 border-0">
							<div class="text-center">
								Bạn không có tài khoản? <a href="DangKy.aspx" class="text-dark">Tạo tài khoản</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>
