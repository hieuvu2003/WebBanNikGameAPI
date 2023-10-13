create database WEBBANNICK
USE [WEBBANNICK]
GO
/****** Object:  Table [dbo].[CaiDats] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaiDats](
	[Id] [int] NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[GioLamViec] [nvarchar](50) NULL,
	[GiaoHang] [nvarchar](50) NULL,
	[HoanTien] [nvarchar](50) NULL,
	[SDTLienHe] [nvarchar](50) NULL,
	[EmailLienHe] [nvarchar](50) NULL,
	[FaceBook] [nvarchar](max) NULL,
	[GooglePlus] [nvarchar](max) NULL,
	[Twiter] [nvarchar](max) NULL,
	[YouTube] [nvarchar](max) NULL,
	[Instargram] [nvarchar](max) NULL,
	[GoogleMap] [nvarchar](max) NULL,
	[MatKhauMail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhaps] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhaps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[TongTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDons]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDons](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DetailBill] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPhams]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPhams](
	[MaChiTietSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[MoTa] [nvarchar](350) NOT NULL,
	[ChiTiet] [nvarchar](max) NULL,
 CONSTRAINT [PK_DetailProducts] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietTaiKhoans] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTaiKhoans](
	[MaChitietTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[AnhDaiDien] [nvarchar](500) NULL,
 CONSTRAINT [PK_InformationAccounts] PRIMARY KEY CLUSTERED 
(
	[MaChitietTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenMucs]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMucs](
	[MaChuyenMuc] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMucCha] [int] NULL,
	[TenChuyenMuc] [nvarchar](50) NULL,
	[DacBiet] [bit] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[MaChuyenMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKBanTins] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKBanTins](
	[Id] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuats]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuats](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[LinkWeb] [nvarchar](max) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhaps] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhaps](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaNhaPhanPhoi] [int] NULL,
	[NgayTao] [datetime] NULL,
	[KieuThanhToan] [nvarchar](max) NULL,
	[MaTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDons] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDons](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [datetime] NULL,
	[NgayDuyet] [datetime] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[Diachi] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChiGiaoHang] [nvarchar](350) NULL,
	[ThoiGianGiaoHang] [datetime] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangs] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoans] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoans](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](250) NULL,
 CONSTRAINT [PK_TypeAccounts] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaPhanPhois]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaPhanPhois](
	[MaNhaPhanPhoi] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaPhanPhoi] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCaos] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCaos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[LinkQuangCao] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMuc] [int] NULL,
	[TenSanPham] [nvarchar](150) NULL,
	[AnhDaiDien] [nvarchar](350) NULL,
	[Gia] [decimal](18, 0) NULL,
	[GiaGiam] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [bit] NULL,
	[LuotXem] [int] NULL,
	[DacBiet] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams_NhaPhanPhois]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams_NhaPhanPhois](
	[MaSanPham] [int] NOT NULL,
	[MaNhaPhanPhoi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[MaAnh] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[TieuDe1] [nvarchar](250) NULL,
	[TieuDe2] [nvarchar](250) NULL,
	[MoTa1] [nvarchar](250) NULL,
	[MoTa2] [nvarchar](250) NULL,
	[MoTa3] [nvarchar](250) NULL,
	[MoTa4] [nvarchar](250) NULL,
	[LinkAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[LoaiTaiKhoan] [int] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTucs]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTucs](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[MoTa] [nvarchar](250) NULL,
	[NgayTao] [datetime] NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CaiDats] ([Id], [Logo], [GioLamViec], [GiaoHang], [HoanTien], [SDTLienHe], [EmailLienHe], [FaceBook], [GooglePlus], [Twiter], [YouTube], [Instargram], [GoogleMap], [MatKhauMail]) VALUES (1, N'/Images/logo.jpg', N'T2- CN: 8.00 - 18.00', N'miễn phí với hóa đơn trên 4.000.000 VNĐ', N'100%30 ngày kể từ khi giao hàng', N'0(123) 456 789', N'info@dothethao.com', N'#', N'#', N'#', N'#', N'#', N'#', N'123456')
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] ON 

INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (4, 3, 1167, 100, N'Nick', CAST(10 AS Decimal(18, 0)), CAST(49500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (5, 3, 1166, 100, N'Nick', CAST(5 AS Decimal(18, 0)), CAST(39900000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (6, 3, 1166, 100, N'Nick', CAST(10 AS Decimal(18, 0)), CAST(41800000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (9, 3, 1166, 1, N'Nick', CAST(10 AS Decimal(18, 0)), CAST(418000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (11, 3, 1166, 3, N'Nick', CAST(10 AS Decimal(18, 0)), CAST(1254000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (13, 3, 1166, 1, N'Nick', CAST(1 AS Decimal(18, 0)), CAST(383800 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] ON 

INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (1, 1, 1113, 4, CAST(52000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietSanPhams] ON 

INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2033, 1167, 1, N'Không có gì', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2034, 1166, 2, N'Không có gì', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2035, 1165, 1, N'Không có gì', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2036, 1164, 4, N'Không có gì', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2037, 1163, 1, N'Không có gì', NULL)
SET IDENTITY_INSERT [dbo].[ChiTietSanPhams] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoans] ON 

INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (1, 1, N'sss', N'dsff', N'0123456789', N'/Images/Avatars/s.png')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (2, 2, N'Vũ Minh Hiếu', N'Phú Thọ', NULL, N'/Images/Avatars/a1.PNG')
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuyenMucs] ON 

INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (31, NULL, N'NICK VÍP', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (32, NULL, N'NICK SIÊU RẺ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (33, NULL, N'NICK GIẢM GIÁ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (34, NULL, N'NICK TẦM TRUNG', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (35, NULL, N'NICK GIÁ HỢP LÝ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (36, NULL, N'NICK CHO THUÊ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (37, 35, N'NICK KHÓA MÃ BV', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (38, 35, N'NICK SKILL CAO', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (39, 31, N'NICK LẮM TT', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (40, 31, N'NICK NHIỀU ĐỒ VÍP', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1037, NULL, N'LIÊN HỆ', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1038, NULL, N'TÀI KHOẢN CỦA TÔI', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1039, NULL, N'THANH TOÁN & GIAO HÀNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1040, NULL, N'DỊCH VỤ KHÁCH HÀNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1042, 1037, N'(800) 0123 456 789', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1043, 1037, N'Address - 1234 - Hưng Yên', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1044, 1038, N'Sitemap', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1045, 1038, N'Chính sách riêng tư', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1046, 1038, N'Tài khoản', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1047, 1038, N'Tìm kiếm nâng cao', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1048, 1038, N'Liên hệ', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1049, 1039, N'Điều khoản sử dụng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1050, 1039, N'Phương thức thanh toán', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1051, 1039, N'Hướng dẫn giao hàng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1052, 1039, N'Địa điểm giao hàng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1053, 1039, N'Thời gian dự kiến giao hàng', 1, NULL)


INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1055, 1040, N'Bồi thường', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1056, 1040, N'Tài khoản', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1057, 1040, N'Chính sách trả lại', 1, NULL)


SET IDENTITY_INSERT [dbo].[ChuyenMucs] OFF
GO
SET IDENTITY_INSERT [dbo].[HangSanXuats] ON 

INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (1, N'Adidas', N'http://www.adidas.com.vn/', N'/Images/HangSXs/Adidas.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (2, N'Filla', N'http://www.fila.com/', N'/Images/HangSXs/Fila.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (3, N'Hi-tec', N'http://www.hi-tec.com/', N'/Images/HangSXs/HiTec.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (4, N'Newbalance', N'http://www.newbalance.com/', N'/Images/HangSXs/NewBala.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (5, N'Nike', N'http://www.nike.com/us/en_us/', N'/Images/HangSXs/Nike.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (6, N'Puma', N'http://puma.com/', N'/Images/HangSXs/Puma.jpg')
SET IDENTITY_INSERT [dbo].[HangSanXuats] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] ON 

INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan]) VALUES (3, 1, CAST(N'2016-12-04T00:00:00.000' AS DateTime), N'Trả tiền trước', NULL)
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDons] ON 

INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [NgayDuyet], [TongGia], [TenKH], [GioiTinh], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [ThoiGianGiaoHang]) VALUES (1, 0, CAST(N'2016-05-21T09:54:25.963' AS DateTime), NULL, CAST(52000000 AS Decimal(18, 0)), N'trịnh quang trung', 0, N'luong bag', N'trinhquangtrung375@gmail.com', N'09666226444', N'kimdong', CAST(N'2016-05-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[HoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHangs] ON 

INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (0, N'Vũ Minh Hiếu', 0, N'Phú Thọ', N'012345678', N'vuminhhieu21122003@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (1, N'Vũ Văn Hiệp', 0, N'Hưng Yên', N'22455434', N'hiep123@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (2, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (3, N'Dương Đức Nguyên', 0, N'Hưng Yên', N'32f4234234', N'nguyen888@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (4, N'Nguyễn Quốc Cường', 0, N'Khoái Châu', N'09f666226444', N'cuongphan375@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHangs] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] ON 

INSERT [dbo].[LoaiTaiKhoans] ([MaLoai], [TenLoai], [MoTa]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[LoaiTaiKhoans] ([MaLoai], [TenLoai], [MoTa]) VALUES (2, N'KhachHang', NULL)
INSERT [dbo].[LoaiTaiKhoans] ([MaLoai], [TenLoai], [MoTa]) VALUES (3, N'QuanLy', NULL)
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] ON 

INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (1, N'Nhà Phát Hành Game', N'Team, Hà Nội', N'0123456789', N'000912124', N'Cung cấp ncik dể tes')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (2, N'Vũ Minh Hiếu', N'Phú Thọ, Phú Thọ', N'12341241241', N'086812468', N'Nhập nick để bán')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (3, N'Vũ Văn Hiệp', N'Hưng Yên', N'01237812384', N'098912777', N'Nhập và bán nick')
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] OFF
GO
SET IDENTITY_INSERT [dbo].[QuangCaos] ON 

INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (1, N'/Images/QuangCao/banner_072b030b.jpg', NULL, NULL)
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (2, N'/Images/QuangCao/tap-dung-bung-dung-cach.png', NULL, NULL)
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (3, N'/Images/QuangCao/176-kfx1297859199.jpg', NULL, NULL)
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (4, N'/Images/QuangCao/banner_072b030b.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[QuangCaos] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhams] ON 

INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (47, 34, N'Xe đạp thông dụng Fomix', N'/Images/Products/XEDAPFORMIX.jpg', CAST(1990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (48, 34, N'
Xe đạp gấp địa hình 26 inch Fury', N'/Images/Products/f93dfb_simg_b5529c_250x250_maxb.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 2, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (49, 34, N'
XE ĐẠP ĐUA KHUNG SƯỜN NHÔM', N'/Images/Products/444737_simg_b5529c_250x250_maxb.jpg', CAST(3760000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (50, 34, N'
Xe đạp Fixed Gear BF200', N'/Images/Products/6a24a4_simg_b5529c_250x250_maxb.jpg', CAST(2380000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 198, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (51, 34, N'
Xe địa hình Fornix', N'/Images/Products/a753a2_simg_0f3fd7_1181-1181-356-0_cropf_simg_b5529c_250x250_maxb.JPG', CAST(5480000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (52, 34, N'
Xe đạp đua Fury khung nhôm BT401', N'/Images/Products/83495f_simg_b5529c_250x250_maxb.jpg', CAST(3760000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (53, 34, N'XE ĐẠP TRẺ EM USA HUFFY JAZZMIN 20 - #23035Y', N'/Images/Products/277757_simg_b5529c_250x250_maxb.jpg', CAST(2990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (54, 34, N'
Xe Đạp Thể Thao SuperCycles', N'/Images/Products/3f2cd1_simg_b5529c_250x250_maxb.JPG', CAST(1990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (55, 37, N'Máy chạy bộ điện đa năng MHT-400', N'/Images/Products/1090_may_cay_bo_dien_da_nang_mht_400.JPG', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (56, 37, N'Máy chạy bộ điện đa năng MHT-1809AD', N'/Images/Products/250_530_may_chay_bo_dien_mh_1809ad.jpg', CAST(15990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (57, 37, N'Máy chạy bộ điện OMA-1610CA', N'/Images/Products/250_885_1910.jpg', CAST(15800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (58, 37, N'Máy chạy bộ điện đa năng 8018', N'/Images/Products/250_1168_may_chay_bo_dien_8018_9.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (59, 38, N'Máy tập chạy bộ cơ KL-9835', N'/Images/Products/250_151_may_tap_chay_bo_co_kl_9835.jpg', CAST(2890000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (60, 38, N'Máy chạy bộ cơ KL-9938', N'/Images/Products/250_835_may_chay_bo_co_kl_9938.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (61, 38, N'Máy chạy bộ cơ DL-916', N'/Images/Products/250_585_may_tap_chay_bo_co_kl_805_3_.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (62, 38, N'Máy chạy bộ cơ đa năng động lực KL 9919 (DL-0020)', N'/Images/Products/250_153_may_chay_bo_co_kl9919.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (63, 39, N'Quả bóng đá CB 4.114', N'/Images/Products/250_931_901_qua_bong_da_ucv_4_114.jpg', CAST(220000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (64, 39, N'Quả bóng đá Fus 2.76', N'/Images/Products/250_930_qua_bong_da_futsal_fus_2_76.PNG', CAST(270000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (65, 39, N'Quả bóng đá may số 2 Euro 2012', N'/Images/Products/250_928_qua_bong_da_may_so_2_euro_2012.PNG', CAST(100000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (66, 39, N'Quả bóng đá số 4 may không In D', N'/Images/Products/250_924_qua_bong_da_may_so_4_may_khong_in_d.PNG', CAST(100000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (67, 39, N'Quả bóng đá CM 5.21', N'/Images/Products/250_918_qua_bong_da_cm_5_21.jpg', CAST(120000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (68, 40, N'Quả bóng chuyền DL 200', N'/Images/Products/250_935_qua_bong_chuyen_dl_200.PNG', CAST(105000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (69, 40, N'Quả bóng chuyền DL 240M3', N'/Images/Products/250_934_qua_bong_chuyen_ebete_dl_240m3.PNG', CAST(140000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (70, 40, N'Quả bóng chuyền DL 220C', N'/Images/Products/250_933_qua_bong_chuyen_dl_220c.PNG', CAST(190000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (71, 40, N'Quả bóng chuyền DL 210M3', N'/Images/Products/250_932_qua_bong_chuyen_dl_210m3.PNG', CAST(210000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (72, 40, N'Quả bóng chuyền DL210C', N'/Images/Products/250_929_qua_bong_chuyen_hunter_dl210c_1.PNG', CAST(200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (73, 41, N'VỢT CẦU LÔNG FORZA MEGA SPEED 77', N'/Images/Products/250_805_vot_cau_long_speed_77.jpg', CAST(720000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (74, 41, N'VỢT CẦU LÔNG BABOLAT SATELITE ', N'/Images/Products/250_804_vot_cau_long_6_0_life1.jpg', CAST(1200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (75, 41, N'VỢT CẦU LÔNG FORZA NANO FLEX ', N'/Images/Products/250_803_vot_cau_long_forza_nano_flex_7800.jpg', CAST(1200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (76, 41, N'CỘT CẦU LÔNG DI ĐỘNG', N'/Images/Products/250_1146_cot_cau_long_di_dong.PNG', CAST(1800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (77, 41, N'MÁY CĂNG VỢT CẦU LÔNG 6 CHẤU', N'/Images/Products/250_802_may_cang_vot_6_chau_ban_xoay.jpg', CAST(22000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (78, 42, N'GIÀY ĐÁ BÓNG TF NIKE 415130-108', N'/Images/Products/250_219_giay_da_bong_tf_nike_415130_108.jpg', CAST(1161000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (79, 42, N'GIÀY BÓNG ĐÁ TF NIKE 509089-105', N'/Images/Products/250_218_giay_bong_da_tf_nike_509089_105.jpg', CAST(1270000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (80, 42, N'GIÀY RUNNING NIKE NAM 555337-440', N'/Images/Products/250_204_giay_the_thao_nike.jpg', CAST(3133000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (81, 42, N'GIÀY BÓNG ĐÁ NIKE 472560-808', N'/Images/Products/250_215_giay_bong_da_nike_472560_808.jpg', CAST(1300000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (82, 42, N'GIÀY BÓNG ĐÁ NIKE 580444-800', N'/Images/Products/250_212_giay_bong_da_nike_580444_800.jpg', CAST(2600000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (83, 43, N'
Sét bộ thể thao thời trang cực kool...!
', N'/Images/Products/148006_simg_5d7c3f_790-790-0-0_cropf_simg_b5529c_250x250_maxb.jpg', CAST(205000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (84, 43, N'
Bộ đồ thể thao nam ngôi sao', N'/Images/Products/96874d_simg_b5529c_250x250_maxb.jpg', CAST(185000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (85, 43, N'
Bộ đồ thể thao nam BS05', N'/Images/Products/bothudongnam_2kg5dg7r75gmf_simg_b5529c_250x250_maxb.jpg', CAST(350000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (86, 43, N'
Sét đồ tập gym nam mới nhất BS04A', N'/Images/Products/a65449_simg_b5529c_250x250_maxb.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (87, 43, N'
Bộ quần áo thể thao đẹp cho nam B', N'/Images/Products/443496_simg_b5529c_250x250_maxb.jpg', CAST(295000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1086, 37, N'Máy chạy bộ điện đa năng MHT-400', N'/Images/Products/1090_may_cay_bo_dien_da_nang_mht_400.JPG', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1087, 37, N'Máy chạy bộ điện đa năng MHT-1809AD', N'/Images/Products/250_530_may_chay_bo_dien_mh_1809ad.jpg', CAST(15990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1088, 37, N'Máy chạy bộ điện OMA-1610CA', N'/Images/Products/250_885_1910.jpg', CAST(15800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1089, 37, N'Máy chạy bộ điện đa năng 8018', N'/Images/Products/250_1168_may_chay_bo_dien_8018_9.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1090, 38, N'Máy tập chạy bộ cơ KL-9835', N'/Images/Products/250_151_may_tap_chay_bo_co_kl_9835.jpg', CAST(2890000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1091, 38, N'Máy chạy bộ cơ KL-9938', N'/Images/Products/250_835_may_chay_bo_co_kl_9938.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1092, 38, N'Máy chạy bộ cơ DL-916', N'/Images/Products/250_585_may_tap_chay_bo_co_kl_805_3_.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1093, 38, N'Máy chạy bộ cơ đa năng động lực KL 9919 (DL-0020)', N'/Images/Products/250_153_may_chay_bo_co_kl9919.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1094, 37, N'Máy chạy bộ điện đa năng MHT-400', N'/Images/Products/1090_may_cay_bo_dien_da_nang_mht_400.JPG', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1095, 37, N'Máy chạy bộ điện đa năng MHT-1809AD', N'/Images/Products/250_530_may_chay_bo_dien_mh_1809ad.jpg', CAST(15990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1096, 37, N'Máy chạy bộ điện OMA-1610CA', N'/Images/Products/250_885_1910.jpg', CAST(15800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1097, 37, N'Máy chạy bộ điện đa năng 8018', N'/Images/Products/250_1168_may_chay_bo_dien_8018_9.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1098, 38, N'Máy tập chạy bộ cơ KL-9835', N'/Images/Products/250_151_may_tap_chay_bo_co_kl_9835.jpg', CAST(2890000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1099, 38, N'Máy chạy bộ cơ KL-9938', N'/Images/Products/250_835_may_chay_bo_co_kl_9938.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1100, 38, N'Máy chạy bộ cơ DL-916', N'/Images/Products/250_585_may_tap_chay_bo_co_kl_805_3_.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1101, 38, N'Máy chạy bộ cơ đa năng động lực KL 9919 (DL-0020)', N'/Images/Products/250_153_may_chay_bo_co_kl9919.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1102, 50, N'Xà đơn treo tường', N'/Images/Products/685_xa_don_treo_tuong_2.jpg', CAST(330000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1103, 50, N'XÀ ĐƠN XẾP LOẠI NHỎ 601921', N'/Images/Products/250_596_xa_don_xep_duc_long.jpg', CAST(1590000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1104, 50, N'XÀ ĐƠN ĐA NĂNG IRON GYM-1557A', N'/Images/Products/250_684_xa_don_iron_1557a.jpg', CAST(550000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1105, 50, N'XÀ ĐƠN ĐA NĂNG HANWEI 881', N'/Images/Products/250_683_xa_don_da_nang_hanwei_881.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1106, 50, N'XÀ KÉP ĐIỀU CHỈNH ĐỘ CAO MF1925', N'/Images/Products/250_459_xa_kep_dieu_chinh_do_cao_mf1925.jpg', CAST(10590000 AS Decimal(18, 0)), CAST(9590000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1107, 50, N'XÀ ĐƠN ĐA NĂNG LIFE 100', N'/Images/Products/250_681_xa_don_da_nang_life_100.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1108, 50, N'XÀ KÉP TIÊU CHUẨN', N'/Images/Products/250_680_xa_kep_tieu_chuan.jpg', CAST(13300000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1109, 50, N'XÀ ĐƠN ĐA NĂNG 1557B', N'/Images/Products/250_687_xa_don_da_nang_1557b.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1110, 50, N'XÀ KÉP TRONG NHÀ ĐỨC LONG', N'/Images/Products/250_1139_xa_kep_trong_nha.PNG', CAST(15900000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1111, 49, N'MÁY TẬP ĐI BỘ TRÊN KHÔNG GAZELLE ', N'/Images/Products/250_565_may_chay_bo_tren_khong_edge.jpg', CAST(19000000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1112, 49, N'MÁY CHẠY BỘ TRÊN KHÔNG XUKI', N'/Images/Products/250_563_may_chay_bo_tren_khong_tk_04.jpg', CAST(19000000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1113, 49, N'MÁY CHẠY BỘ TRÊN KHÔNG TECH FITNESS', N'/Images/Products/250_562_may_chay_bo_tren_khong_elip_02.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(13000000 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1114, 51, N'GHẾ CONG TẬP BỤNG 601002 (BEN2)', N'/Images/Products/250_178_002_1.jpg', CAST(16400000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1115, 51, N'GHẾ TẬP CƠ BỤNG BEN PRO 601003', N'/Images/Products/250_176_ghe_cong_tap_bung_ben_pro.jpg', CAST(12500000 AS Decimal(18, 0)), CAST(10000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1116, 51, N'GHẾ CONG TẬP BỤNG EBETE CJH-103AR', N'/Images/Products/250_840_ghe_cong_tap_bung_ebete.jpg', CAST(19450000 AS Decimal(18, 0)), CAST(17000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1117, 51, N'GHẾ CONG TẬP BỤNG DL-2640', N'/Images/Products/250_839_ghe_cong_tap_bung_dl2640.jpg', CAST(19400000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1118, 51, N'GHẾ CONG TẬP BỤNG DL-961', N'/Images/Products/250_838_ghe_cong_tap_bung_dl_961.jpg', CAST(15400000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1119, 51, N'GHẾ CONG TẬP LƯNG BỤNG AB TRAINER ', N'/Images/Products/250_608_ghe_cong_tap_lung_bung_601021.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(13000000 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1120, 51, N'GHẾ CONG CƠ BỤNG XUKI KHÔNG CÀNG', N'/Images/Products/250_576_ghe_cong_bung_xuki_khong_cang.jpg', CAST(12400000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1121, 51, N'GHẾ CONG TẬP CƠ BỤNG XUKI CÓ CÀNG', N'/Images/Products/250_175_ban_cong_ghe_cong_tap_bung_xuki_co_cang.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1122, 44, N'GIÀN TẬP TẠ ĐA NĂNG GM 8130', N'/Images/Products/250_234_gian_ta_da_nang_gm_8130.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1123, 44, N'DÀN TẠ ĐA NĂNG 3001F', N'/Images/Products/250_733_dan_ta_da_nang_3001f.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1124, 44, N'GIÀN TẠ ĐA NĂNGTITAN WT-H63', N'/Images/Products/250_992_gian_ta_da_nang_titan_wt_h63_2.PNG', CAST(35500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1125, 44, N'DÀN TẠ ĐA NĂNG 7201A', N'/Images/Products/250_231_dan_tap_ta_da_nang_7201a.jpg', CAST(18550000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1126, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H66', N'/Images/Products/250_989_gian_ta_da_nang_titan_wt_h66.PNG', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1127, 44, N'DÀN TẠ ĐA NĂNG KFHG-22', N'/Images/Products/250_844_gian_tap_ta_da_nang_kfhg_22.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1128, 44, N'GIÀN TẬP TẠ ĐA NĂNG GM 6550', N'/Images/Products/250_236_gian_tap_ta_da_nang_gm_6550_1.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1129, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H83', N'/Images/Products/250_880_gian_ta_da_nang_3_vi_tri_tap_wth83.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1130, 44, N'DÀN TẠ ĐA NĂNG 3001C', N'/Images/Products/250_734_3001c.jpg', CAST(15500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1131, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H68', N'/Images/Products/250_988_gian_ta_da_nang_wt_h68__1.PNG', CAST(15500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1132, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H88', N'/Images/Products/250_991_gian_ta_da_nang_titan_wt_h88.PNG', CAST(14500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1133, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H53', N'/Images/Products/250_990_gian_ta_da_nang_titan_wt_h53.PNG', CAST(8500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1134, 44, N'MÁY TẬP GYM DL-2617
', N'/Images/Products/250_850_may_tap_gym_dl_2617.jpg', CAST(175500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1135, 44, N'MÁY TẬP GYM DL-2616', N'/Images/Products/250_849_may_tap_gym_dl_2616.jpg', CAST(15500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1136, 44, N'MÁY TẬP GYM DL-2614
2', N'/Images/Products/250_848_may_tap_gym_dl_2614.jpg', CAST(185500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1137, 44, N'DÀN TẬP TẠ ĐA NĂNG KFHG-12', N'/Images/Products/250_842_gian_tap_ta_da_nang_kfhg_12.jpg', CAST(135500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1138, 47, N'GHẾ TẠ ĐA NĂNG VIFASPORT 601250', N'/Images/Products/250_878_ghe_ta_da_nang_601250.JPG', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1139, 47, N'GHẾ TẬP TẠ ĐA NĂNG DL-0942A', N'/Images/Products/250_841_ghe_day_ta_dl0942a.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1140, 47, N'GIÀN TẬP TẠ ĐA NĂNG TÀI PHÁT TP-52', N'/Images/Products/250_250_gian_ta_da_nang_601501_ben501.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1141, 47, N'GHẾ TẬP TẠ ĐA NĂNG XUKI', N'/Images/Products/250_248_gian_ta_da_nang_xuki.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1142, 47, N'GHẾ TẬP TẠ ĐA NĂNG BEN 501B (601521)', N'/Images/Products/250_455_ghe_tap_multy_ben_501b_601521.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1143, 47, N'GHẾ TẠ ĐA NĂNG BEN 502 (601502)', N'/Images/Products/250_339_ghe_tap_ta_da_nang_ben_502.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
GO
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1144, 47, N'GHẾ TẠ ĐA NĂNG BEN 401', N'/Images/Products/250_247_ghe_ta_da_nang_ben_401.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1145, 47, N'GHẾ ĐẨY TẠ SP 301-1', N'/Images/Products/250_753_ghe_day_ta_301_1.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1146, 47, N'GIÀN TẠ NẰM LIFE-7208', N'/Images/Products/250_888_gian_ta_nam_life_7208.JPG', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1147, 47, N'GHẾ TẬP TẠ ĐA NĂNG ADIDAS ADBE-10237', N'/Images/Products/250_752_ghe_tap_ta_da_nang_adidas_adbe_10237.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1148, 45, N'TẠ TAY BROSMAN', N'/Images/Products/250_1205_ta_tay_brosman.JPG', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1149, 45, N'TẠ TAY LỤC GIÁC 2,5KG', N'/Images/Products/250_543_ta_tay_adwt_10342.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1150, 45, N'TẠ BÌNH 5KG REEBOK RAWT-18005YL', N'/Images/Products/250_540__rawt_ta_bing_18005yl.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1151, 45, N'BỘ TẠ TAY 12 KG REEBOK', N'/Images/Products/250_434_tatay12kgrawt_11056.jpeg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1152, 45, N'TẠ TAY BỌC MÚT REEBOK', N'/Images/Products/250_255_ta_tay_boc_mut_rawt_11060mg.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1153, 45, N'BỘ TẠ TAY REEBOK 6KG', N'/Images/Products/250_254_bo_ta_tay_6kg.jpg', CAST(1245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1154, 45, N'TẠ TAY REEBOK', N'/Images/Products/250_252_ta_tay.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 2, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1155, 45, N'TẠ TAY CAO SU 10KG ADWT-10322', N'/Images/Products/250_4_ta_tay_cao_su_10kg.jpg', CAST(1245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1156, 46, N'KHUNG BOXING 601973 (S1973)', N'/Images/Products/250_190_601973.jpg', CAST(3250000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), 200, 1, 2, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1157, 46, N'KHUNG BOXING S1973', N'/Images/Products/250_458_khung_tap_boxing.jpg', CAST(3250000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1158, 46, N'BAO BOXING 4 FEET RABX-11245', N'/Images/Products/250_440_bao_dam_rabx_11245.jpg', CAST(2850000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1159, 36, N'Đích đá đơn Kangrui', N'/Images/Products/250_190_dich_da_don_kangrui.jpg', CAST(165000 AS Decimal(18, 0)), CAST(125000 AS Decimal(18, 0)), 200, 1, 28, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1160, 36, N'Đích đá đơn Kangrui', N'/Images/Products/250_190_dich_da_don_kangrui.jpg', CAST(165000 AS Decimal(18, 0)), CAST(125000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1161, 36, N'Dây kéo tay lò xo', N'/Images/Products/250_221_day_keo_tay_lo_xo.jpg', CAST(125000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), 200, 1, 14, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1162, 36, N'Bóp tay tròn', N'/Images/Products/250_224_bop_tay_tron.jpg', CAST(300000 AS Decimal(18, 0)), CAST(225000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1163, 36, N'Xe trượt BE01', N'/Images/Products/250_225_xe_truot_be01.jpg', CAST(295000 AS Decimal(18, 0)), CAST(255000 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1164, 36, N'Bao cát đấm bốc', N'/Images/Products/250_983_0_699630.jpg', CAST(350000 AS Decimal(18, 0)), CAST(225000 AS Decimal(18, 0)), 200, 1, 184, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1165, 36, N'Mộc nhân tập võ', N'/Images/Products/250_984_0_image.jpg', CAST(8950000 AS Decimal(18, 0)), CAST(7950000 AS Decimal(18, 0)), 200, 1, 116, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1166, 36, N'Thảm tập võ thuật', N'/Images/Products/250_210_0_tham_tap_vo.jpg', CAST(200000 AS Decimal(18, 0)), CAST(169000 AS Decimal(18, 0)), 150, 1, 6, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1167, 36, N'Bóng tốc độ tập phản xạ', N'/Images/Products/250_194_bong_toc_do_tap_phan_xa.jpg', CAST(450000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 306, 1, 14, 0)
SET IDENTITY_INSERT [dbo].[SanPhams] OFF
GO
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (47, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (48, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (49, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (50, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (51, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (53, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1166, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1167, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1163, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1164, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1165, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1166, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (49, 3)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (50, 3)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (51, 3)
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([MaAnh], [TieuDe], [TieuDe1], [TieuDe2], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [LinkAnh]) VALUES (1, N'Máy chạy bộ đa năng', N'Máy chạy bộ đa năng', N'Giảm giá sốc', N'Giảm tới!', N'30% off', N'Tặng kèm đĩa DVD tập cùng với huấn luyện viên', N'Tặng thêm phụ kiện bảo hộ', N'/Images/SlideShows/img-04.jpg')
INSERT [dbo].[Slide] ([MaAnh], [TieuDe], [TieuDe1], [TieuDe2], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [LinkAnh]) VALUES (2, N'Khai trương cửa hàng mới', N'Khai trương cửa hàng mới', N'Giảm giá cực lớn', N'Giảm tới!', N'50% off', NULL, NULL, N'/Images/SlideShows/img-05.jpg')
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoans] ON 

INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (1, 1, N'admin', N'123456', N'shopthethaonova@gmail.com')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (2, 1, N'dongnh', N'123456', N'dongnh@gmail.com')
SET IDENTITY_INSERT [dbo].[TaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTucs] ON 

INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (1, N'Top 4 Premier League: Kịch hay còn trước mắt', N'/Images/TinTuc/Top4Perier.jpg', N' Cục diện top 4 Premier League đã có sự thay đổi đáng kể sau vòng 33. Những cái tên nổi trội như Leicester hay Arsenal đều bị cầm hoà. Trong khi đó, Manchester City lại có chiến thắng tưng bừng trước Chelsea.', CAST(N'2021-11-16T19:49:59.520' AS DateTime)

INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (2, N'Totti lại ''làm loạn'' ở AS Roma', N'/Images/TinTuc/95714491d4d247.jpg', N'Trong những ngày cuối cùng tại AS Roma, hình ảnh của Francesco Totti đang ngày càng trở nên xấu xí hơn.', CAST(N'2021-11-16T19:49:59.520' AS DateTime)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (3, N'Cựu hậu vệ U23 Việt Nam qua đời ở tuổi 23', N'/Images/TinTuc/95714444658e73.jpg', N'Đó là hậu vệ Trần Phước Thọ hiện đang thi đấu cho CLB Long An', CAST(N'2021-11-16T19:49:59.520' AS DateTime)

INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (4, N'Klopp nói gì về việc thay tới 10 cầu thủ của Liverpool', N'/Images/TinTuc/9571444ba02fbf.jpg', N'HLV Jurgen Klopp đã lên tiếng bảo vệ việc thay đổi gần như toàn bộ đội hình của Liverpool so với lần ra sân gần nhất.', CAST(N'2021-11-16T19:49:59.520' AS DateTime)

INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (5, N'Rakitic tặng bàn thắng cho Valencia, Barca rơi tự do', N'/Images/TinTuc/9571438b6ec5ee.jpg', N'Vòng 33 La Liga, Barcelona tiếp tục phải nhận trận thua thứ 3 liên tiếp sau khi để thua 1-2 trước Valencia. Ivan Rakitic chính là tội đồ của trận đấu này.', CAST(N'2021-11-16T19:49:59.520' AS DateTime)

INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (6, N'Điểm tin hậu trường 16/4: Quá khứ ‘ngây thơ’ của CR7; Neymar lụn bại vì dục tính', N'/Images/TinTuc/95711e684199f2.jpg', N'Iniesta ‘thổn thức’ trên xe buýt; Hồng Quân nhẫn tâm lừa dối Kỳ Hân; Neymar lụn bại vì dục tính;… là những tin chính trong điểm tin hậu trường 16/4.', CAST(N'2021-11-16T19:49:59.520' AS DateTime)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (7, N'Choáng! Nữ sinh Trung Quốc luyện võ trong bộ đồ sexy', N'/Images/TinTuc/957130c6ae7328.jpg', N'Ngày 7/4, hơn 100 nữ sinh Trung Quốc đến từ khắp nơi tham gia một sự kiện với bộ đồ cực ngắn luyện võ. Điều này khiến khán giả dậy sóng với nhiều tranh cãi trái chiều.', CAST(N'2021-11-16T19:49:59.520' AS DateTime)


INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (8, N'Ông chủ Leicester ‘cưỡi’ trực thăng tới xem Bầy cáo tập luyện', N'/Images/TinTuc/957134db069430.jpg', N'Vị chủ tịch của Leicester City khoe độ giàu có của mình khi tới xem thầy trò HLV Claudio Ranieri tập luyện bằng trực thăng.đ', CAST(N'2021-11-16T19:49:59.520' AS DateTime), N'<p>&egrave;dfd</p>
', 10)
SET IDENTITY_INSERT [dbo].[TinTucs] OFF
GO
ALTER TABLE [dbo].[HoaDons] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [GiaGiam]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [DacBiet]
GO
ALTER TABLE [dbo].[TinTucs] ADD  CONSTRAINT [DF_TinTucs_LuotXem]  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaps_HoaDonNhaps] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDonNhaps] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaps_HoaDonNhaps]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaps_SanPhams] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaps_SanPhams]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_DetailBill_Bills] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDons] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_DetailBill_Bills]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_DetailBill_Products] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_DetailBill_Products]
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPhams_NhaSanXuats] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[HangSanXuats] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietSanPhams] CHECK CONSTRAINT [FK_ChiTietSanPhams_NhaSanXuats]
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_DetailProducts_Products] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietSanPhams] CHECK CONSTRAINT [FK_DetailProducts_Products]
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_InformationAccounts_Accounts] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans] CHECK CONSTRAINT [FK_InformationAccounts_Accounts]
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhaps_NhaPhanPhois] FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
GO
ALTER TABLE [dbo].[HoaDonNhaps] CHECK CONSTRAINT [FK_HoaDonNhaps_NhaPhanPhois]
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhaps_TaiKhoans] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[HoaDonNhaps] CHECK CONSTRAINT [FK_HoaDonNhaps_TaiKhoans]
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([MaChuyenMuc])
REFERENCES [dbo].[ChuyenMucs] ([MaChuyenMuc])
GO
ALTER TABLE [dbo].[SanPhams] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_NhaPhanPhois_NhaPhanPhois] FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois] CHECK CONSTRAINT [FK_SanPhams_NhaPhanPhois_NhaPhanPhois]
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_NhaPhanPhois_SanPhams] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois] CHECK CONSTRAINT [FK_SanPhams_NhaPhanPhois_SanPhams]
GO
ALTER TABLE [dbo].[TaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_TypeAccounts] FOREIGN KEY([LoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoans] ([MaLoai])
GO
ALTER TABLE [dbo].[TaiKhoans] CHECK CONSTRAINT [FK_Accounts_TypeAccounts]
GO

------
SELECT * FROM [dbo].[HoaDonNhaps]
SELECT * FROM [dbo].[HoaDons]