USE [master]
GO
/****** Object:  Database [QLBH_BT]    Script Date: 13/01/2017 22:27:22 ******/
CREATE DATABASE [QLBH_BT] ON  PRIMARY 
( NAME = N'QLBH_BT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLBH_BT.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBH_BT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLBH_BT_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH_BT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH_BT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH_BT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH_BT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH_BT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH_BT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH_BT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH_BT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH_BT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH_BT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH_BT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH_BT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH_BT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH_BT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH_BT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH_BT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBH_BT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH_BT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH_BT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH_BT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH_BT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH_BT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH_BT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH_BT] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBH_BT] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH_BT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH_BT] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBH_BT', N'ON'
GO
USE [QLBH_BT]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [nvarchar](32) NOT NULL,
	[MaSP] [nvarchar](32) NOT NULL,
	[SoLuong] [real] NULL,
	[DonGia] [int] NULL,
	[GiamGia] [nvarchar](255) NULL,
 CONSTRAINT [CHITIETHOADON$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[MaPN] [nvarchar](32) NOT NULL,
	[MaSP] [nvarchar](32) NOT NULL,
	[SoLuong] [real] NULL,
	[ThanhTien] [int] NULL,
	[Ghichu] [nvarchar](255) NULL,
 CONSTRAINT [CHITIETPHIEUNHAP$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETPHIEUXUAT]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUXUAT](
	[MaPX] [nvarchar](32) NOT NULL,
	[MaSP] [nvarchar](32) NOT NULL,
	[MaKH] [nvarchar](32) NULL,
	[SoLuong] [real] NULL,
	[Ngayxuat] [datetime2](0) NULL,
	[Gioxuat] [datetime2](0) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [CHITIETPHIEUXUAT$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HANGSANXUAT]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGSANXUAT](
	[MaHSX] [nvarchar](32) NOT NULL,
	[MaSP] [nvarchar](32) NOT NULL,
	[MaNCC] [nvarchar](32) NOT NULL,
	[TenHSX] [nvarchar](255) NULL,
	[XuatXu] [nvarchar](64) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [HANGSANXUAT$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaHSX] ASC,
	[MaSP] ASC,
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [nvarchar](32) NOT NULL,
	[MaKH] [nvarchar](32) NULL,
	[MaNV] [nvarchar](32) NULL,
	[NgayLapHD] [datetime2](0) NULL,
 CONSTRAINT [HOADON$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nvarchar](32) NOT NULL,
	[HoKH] [nvarchar](max) NULL,
	[TenKH] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [int] NULL,
	[E-Mail] [nvarchar](255) NULL,
	[Mathegiamgia] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [KHACHHANG$PrimaryKey1] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHOHANG]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOHANG](
	[MaSP] [nvarchar](32) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MauSac] [nvarchar](255) NULL,
	[Hinh] [nvarchar](255) NULL,
	[KieuDang] [nvarchar](255) NULL,
	[DonGia] [int] NULL,
	[SoLuong] [nvarchar](255) NULL,
	[BaoHanh] [int] NULL,
	[GiaBan] [int] NULL,
 CONSTRAINT [KHOHANG$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [nvarchar](32) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[TenNDD] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](225) NULL,
	[Tax] [real] NULL,
	[Fax] [nvarchar](255) NULL,
	[SDT] [real] NULL,
	[E-Mail] [nvarchar](128) NULL,
 CONSTRAINT [NHACUNGCAP$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](32) NOT NULL,
	[HoNV] [nvarchar](255) NULL,
	[TenNV] [nvarchar](255) NULL,
	[GioiTinh] [varchar](8000) NULL,
	[NgaySinh] [datetime2](0) NULL,
	[ViTri] [nvarchar](255) NULL,
	[NgayBD] [datetime2](0) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [real] NULL,
	[E-Mail] [nvarchar](50) NULL,
 CONSTRAINT [NHANVIEN$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [nvarchar](32) NOT NULL,
	[MaNV] [nvarchar](32) NULL,
	[NgayNhap] [datetime2](0) NULL,
	[MaNCC] [nvarchar](32) NULL,
 CONSTRAINT [PHIEUNHAP$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MaPX] [nvarchar](32) NOT NULL,
	[MaKH] [nvarchar](32) NULL,
	[MaNV] [nvarchar](32) NULL,
	[NgayXuat] [datetime2](0) NULL,
 CONSTRAINT [PHIEUXUAT$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [nvarchar](32) NOT NULL,
	[MaHSX] [nvarchar](32) NULL,
	[TenSP] [nvarchar](32) NULL,
	[MaNCC] [nvarchar](32) NULL,
	[MaLoaiSP] [nvarchar](32) NULL,
	[DonGia] [int] NULL,
	[TinhTrang] [nvarchar](255) NULL,
	[Mausac] [nvarchar](64) NULL,
	[Thongsochitiet] [nvarchar](max) NULL,
	[Mota] [nvarchar](max) NULL,
	[Baohanh] [int] NULL,
 CONSTRAINT [SANPHAM$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USER]    Script Date: 13/01/2017 22:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[MaNV] [nvarchar](32) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [USER$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD01', N'IP5S', 1, 5000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD02', N'IP7', 1, 12000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD03', N'OP01', 2, 6000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD04', N'SN04', 1, 7000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD04', N'SS01', 1, 1000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD05', N'ZF5', 1, 5000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD06', N'LG05', 1, 5000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD06', N'ZF3', 1, 4500000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD07', N'SS05', 1, 4000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD08', N'IP5', 3, 9000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD09', N'OP03', 1, 4500000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD10', N'ZF4', 2, 9600000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD11', N'IP7', 1, 12000000, N'0')
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD11', N'OP03', 1, 4500000, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'HD11', N'ZF4', 2, 9600000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN01', N'IP5', 5, 10000000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN02', N'IP5S', 1, 3000000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN03', N'IP6', 10, 65000000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN04', N'IP7', 15, 128250000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN05', N'LG03', 10, 34680000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN06', N'OP01', 10, 21350000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN07', N'OP02', 10, 21650000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN08', N'OP03', 10, 35120000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN09', N'SS03', 10, 12340000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN10', N'SN01', 5, 17605000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN11', N'SN03', 10, 43210000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN12', N'SS02', 5, 2890000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN13', N'SS05', 15, 54810000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN14', N'LG04', 10, 46230000, NULL)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [SoLuong], [ThanhTien], [Ghichu]) VALUES (N'PN16', N'IP4', 5, 10000000, NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX02', N'IP7', N'KH02', 1, CAST(N'2016-02-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 10:30:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX03', N'OP01', N'KH03', 2, CAST(N'2016-03-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 11:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX04', N'SN04', N'KH04', 9, CAST(N'2016-04-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 09:30:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX04', N'SS01', N'KH04', 1, CAST(N'2016-04-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 09:30:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX05', N'ZF5', N'KH05', 1, CAST(N'2016-05-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 12:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX06', N'LG05', N'KH06', 4, CAST(N'2016-06-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 15:27:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX06', N'ZF3', N'KH06', 7, CAST(N'2016-06-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 03:27:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX07', N'SS05', N'KH07', 1, CAST(N'2016-07-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 19:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX08', N'IP5', N'KH08', 15, CAST(N'2016-08-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 17:30:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX09', N'OP03', N'KH09', 1, CAST(N'2016-09-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 18:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX10', N'SS04', NULL, 7, CAST(N'2016-10-03 00:00:00.0000000' AS DateTime2), CAST(N'2016-12-28 11:21:34.0000000' AS DateTime2), NULL)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [MaKH], [SoLuong], [Ngayxuat], [Gioxuat], [GhiChu]) VALUES (N'PX10', N'ZF4', N'KH10', 1, CAST(N'2016-10-03 00:00:00.0000000' AS DateTime2), CAST(N'1899-12-30 10:22:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'AP', N'IP4', N'Apple Store', N'Apple', N'USA', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'AP', N'IP5', N'Apple Store', N'Apple', N'USA', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'AP', N'IP5S', N'Apple Store', N'Apple', N'USA', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'AP', N'IP6', N'Apple Store', N'Apple', N'USA', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'AP', N'IP7', N'Apple Store', N'Apple', N'USA', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'AS', N'ZF2', N'Viettel', N'ASUS', N'Taiwan', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'AS', N'ZF3', N'Viettel', N'ASUS', N'Taiwan', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'AS', N'ZF4', N'Viettel', N'ASUS', N'Taiwan', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'AS', N'ZF5', N'Viettel', N'ASUS', N'Taiwan', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'LG', N'LG01', N'Viettel', N'LG', N'Korea', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'LG', N'LG02', N'FPT', N'LG', N'Korea', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'LG', N'LG03', N'FPT', N'LG', N'Korea', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'LG', N'LG04', N'Viettel', N'LG', N'Korea', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'LG', N'LG05', N'Viettel', N'LG', N'Korea', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'OP', N'OP01', N'FPT', N'OPPO', N'China', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'OP', N'OP02', N'FPT', N'OPPO', N'China', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'OP', N'OP03', N'FPT', N'OPPO', N'China', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'SN', N'SN01', N'FPT', N'SONY', N'Japan', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'SN', N'SN02', N'Viettel', N'SONY', N'Japan', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'SN', N'SN03', N'FPT', N'SONY', N'Japan', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'SN', N'SN04', N'Viettel', N'SONY', N'Japan', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'SS', N'SS01', N'FPT', N'Samsung', N'Korea', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'SS', N'SS02', N'FPT', N'Samsung', N'Korea', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'SS', N'SS03', N'FPT', N'Samsung', N'Korea', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'SS', N'SS04', N'FPT', N'Samsung', N'Korea', NULL)
INSERT [dbo].[HANGSANXUAT] ([MaHSX], [MaSP], [MaNCC], [TenHSX], [XuatXu], [MoTa]) VALUES (N'SS', N'SS05', N'FPT', N'Samsung', N'Korea', NULL)
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD01', N'KH01', N'NVTN01', CAST(N'2016-01-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD02', N'KH02', N'NVTN02', CAST(N'2016-02-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD03', N'KH03', N'NVTN01', CAST(N'2016-03-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD04', N'KH04', N'NVTN02', CAST(N'2016-04-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD05', N'KH05', N'NVTN01', CAST(N'2016-05-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD06', N'KH06', N'NVTN01', CAST(N'2016-06-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD07', N'KH07', N'NVTN01', CAST(N'2016-07-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD08', N'KH08', N'NVTN01', CAST(N'2016-08-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD09', N'KH09', N'NVTN02', CAST(N'2016-09-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD10', N'KH10', N'NVTN01', CAST(N'2016-10-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD11', N'KH11', N'NVTN02', CAST(N'2016-11-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'HD12', N'KH11', N'NVTN02', CAST(N'2016-11-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH01', N'Lương Mỹ', N'Tiên', N'TP.HCM', 987799553, N'mytien@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH02', N'Hoàng', N'Ngư', N'TP.HCM', 965432178, N'nguvan@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH03', N'Nguyễn Văn', N'Thuận', N'ĐakLak', 1234567895, N'thuannguyen@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH04', N'Mai Cẩm', N'Nhi', N'Bình Dương', 978654345, N'mainhi@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH05', N'Lê  Hoàng', N'Mai', N'TP.HCM', 986763873, N'maihoang@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH06', N'Đinh Dương', N'Hoa', N'TP.HCM', 973445626, N'hoaduong@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH07', N'Dương Lan', N'Ngọc', N'Đồng Nai', 987676543, N'ngocduong@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH08', N'Nguyễn Cẩm', N'Tú', N'TP.HCM', 976543211, N'tunguyen@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH09', N'Lê', N'Minh', N'Lâm Đồng', 987654252, N'leminh@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH10', N'Nguyễn', N'Hiếu', N'Cà Mau', 986427283, N'hieunguyen@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH11', N'Lại Hải', N'Khoa', N'Lũng Cú', 986462822, N'laikhoa@gmail.com', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoKH], [TenKH], [DiaChi], [DienThoai], [E-Mail], [Mathegiamgia], [GhiChu]) VALUES (N'KH12', N'Qoách Ngọc', N'Dung', N'Đồng Nai', 1243567879, N'qoachdung@gmail.com', NULL, NULL)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'IP4', N'Iphone 4', N'Trắng', NULL, N'Trắng, Thanh lịch', 1500000, N'100', 12, 2000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'IP5', N'Iphone 5', N'Đen', NULL, N'Đen, Sang trọng', 2000000, N'56', 12, 3000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'IP5S', N'Iphone 5S', N'Trắng', NULL, N'Trắng, Thanh lịch', 3000000, N'34', 12, 5000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'IP6', N'Iphone 6', N'Đen', NULL, N'Đen, Sang trọng', 6500000, N'15', 12, 8000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'IP7', N'Iphone 7', N'Vàng đồng', NULL, N'Gold, Quý phái', 8550000, N'1', 12, 12000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'LG01', N'LG G1', N'Trắng', NULL, N'Trắng, Thanh lịch', 1560000, N'10', 24, 3500000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'LG02', N'LG G2', N'Đen', NULL, N'Đen, Sang trọng', 2678000, N'35', 12, 4000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'LG03', N'LG G3', N'Đen', NULL, N'Đen, Sang trọng', 3468000, N'20', 12, 4500000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'LG04', N'LG G4', N'Trắng', NULL, N'Trắng, Thanh lịch', 4623000, N'12', 24, 5000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'LG05', N'LG G5', N'Đen', NULL, N'Đen, Sang trọng', 4235000, N'16', 24, 5000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'OP01', N'Oppo Neo 3', N'Trắng', NULL, N'Trắng, Thanh lịch', 2135000, N'50', 12, 3000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'OP02', N'Oppo F1', N'Đen', NULL, N'Đen, Sang trọng', 2165000, N'12', 24, 3500000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'OP03', N'Oppo F1S', N'Vàng đồng', NULL, N'Gold, Quý phái', 3512000, N'13', 12, 4500000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'SN01', N'Sony Z1', N'Trắng', NULL, N'Trắng, Thanh lịch', 3521000, N'16', 24, 4000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'SN02', N'Sony Z2', N'Trắng', NULL, N'Trắng, Thanh lịch', 3265000, N'24', 12, 5000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'SN03', N'Sony Z3', N'Đen', NULL, N'Đen, Sang trọng', 4321000, N'17', 12, 5500000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'SN04', N'Sony Z4', N'Vàng đồng', NULL, N'Gold, Quý phái', 5298000, N'16', 12, 7000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'SS01', N'Samsung Galaxy S3', N'Trắng', NULL, N'Trắng, Thanh lịch', 500000, N'35', 24, 1000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'SS02', N'Samsung Galaxy S4', N'Đen', NULL, N'Đen , Sang trọng', 578000, N'64', 24, 1320000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'SS03', N'Samsung Galaxy S5', N'Trắng', NULL, N'Trắng, Thanh lịch', 1234000, N'48', 24, 2300000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'SS04', N'Samsung Galaxy S6', N'Trắng', NULL, N'Trắng, Thanh lịch', 2367000, N'52', 12, 3000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'SS05', N'Samsung Galaxy S7', N'Đen', NULL, N'Đen, Sang trọng', 3654000, N'26', 12, 4000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'ZF2', N'Asus Zenfone 2', N'Đen', NULL, N'Đen, Sang trọng', 3412000, N'34', 12, 4000000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'ZF3', N'Asus Zenfone 3', N'Đen', NULL, N'Đen, Sang trọng', 3648000, N'97', 24, 4500000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'ZF4', N'Asus Zenfone 4', N'Trắng', NULL, N'Trắng, Thanh lịch', 3956000, N'15', 24, 4800000)
INSERT [dbo].[KHOHANG] ([MaSP], [TenSP], [MauSac], [Hinh], [KieuDang], [DonGia], [SoLuong], [BaoHanh], [GiaBan]) VALUES (N'ZF5', N'Asus Zenfone 5', N'Đen', NULL, N'Đen, Sang trọng', 4236000, N'2', 12, 5000000)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [TenNDD], [DiaChi], [Tax], [Fax], [SDT], [E-Mail]) VALUES (N'Apple Store', N'Apple', N'Tim Cook', N'Hoa K?', 8.326518E+07, N'083265180', 8.326518E+07, N'AppleVietNam@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [TenNDD], [DiaChi], [Tax], [Fax], [SDT], [E-Mail]) VALUES (N'Asus', N'Asus', N'Asus Việt Nam', N'TPHCM', 3.56412544E+09, N'0863256419', 863256448, N'asusvietnam@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [TenNDD], [DiaChi], [Tax], [Fax], [SDT], [E-Mail]) VALUES (N'FPT', N'FPT Việt Nam', N'Bùi Quang Ngọc', N'Việt Nam', 101248144, N'08473008889', 8.47300864E+09, N'FPTVietNam@gmail.com')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [TenNDD], [DiaChi], [Tax], [Fax], [SDT], [E-Mail]) VALUES (N'Viettel', N'Viettel Telecom', N'Nguyễn Mạnh Hùng', N'Việt Nam', 1.001091E+08, N'0462660446', 462660448, N'Vietteltelecom@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NV01', N'Lê Hoàng', N'Hà', N'Nam', CAST(N'1990-02-03 00:00:00.0000000' AS DateTime2), N'Thu Ngân', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'TP.HCM', 923455936, N'hahoang@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NV02', N'Mai Ngọc', N'Phương', N'N?', CAST(N'1990-04-03 00:00:00.0000000' AS DateTime2), N'Thu Ngân', CAST(N'2016-01-02 00:00:00.0000000' AS DateTime2), N'TP.HCM', 987654336, N'phuongmai@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NV03', N'Nguyễn', N'Nam', N'Nam', CAST(N'1991-04-05 00:00:00.0000000' AS DateTime2), N'Bán Hàng', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'TP.HCM', 987654336, N'namnguyen@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NV04', N'Dương Trung', N'Kiên', N'Nam', CAST(N'1992-02-06 00:00:00.0000000' AS DateTime2), N'Bán Hàng', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'Gia Lai', 9.875679E+08, N'kienduong@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NV05', N'Trần Đắc Quỳnh', N'Mai', N'N?', CAST(N'1992-11-01 00:00:00.0000000' AS DateTime2), N'Bán Hàng', CAST(N'2016-01-02 00:00:00.0000000' AS DateTime2), N'Long An', 9.324554E+08, N'maitran@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NV06', N'Dương', N'Hải', N'Nam', CAST(N'1987-04-07 00:00:00.0000000' AS DateTime2), N'Bảo Vệ', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'TP.HCM', 1.68567731E+09, N'haiduong@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NV07', N'Hoàng Thị', N'Hồng', N'N?', CAST(N'1990-02-09 00:00:00.0000000' AS DateTime2), N'Quản Lý Cửa Hàng', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'TP.HCM', 9.678956E+08, N'hoanghong@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NV08', N'Đỗ Văn', N'Long', N'Nam', CAST(N'1993-03-08 00:00:00.0000000' AS DateTime2), N'Quản Lý Kho', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'Đồng Tháp', 978654336, N'longdo@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NVK01', N'Lê', N'Quốc', N'Nam', CAST(N'1990-01-04 00:00:00.0000000' AS DateTime2), N'Nhân viên kho', CAST(N'2016-01-02 00:00:00.0000000' AS DateTime2), N'Kiên Giang', 9.765769E+08, N'lequoc@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NVK02', N'Trần Thảo', N'Vy', N'N?', CAST(N'1994-08-28 00:00:00.0000000' AS DateTime2), N'Nhân viên kho', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'Mỹ Tho', 9.653277E+08, N'vytran@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NVKT01', N'Nguyễn Quốc', N'Minh', N'Nam', CAST(N'1982-12-27 00:00:00.0000000' AS DateTime2), N'Nhân viên kĩ thuật', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'Đà Nẵng', 1.468366E+09, N'minhnguyen@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NVKT02', N'Lê Song', N'Thụy', N'Nam', CAST(N'1980-11-28 00:00:00.0000000' AS DateTime2), N'Nhân viên kĩ thuật', CAST(N'2016-01-02 00:00:00.0000000' AS DateTime2), N'Quy Nhơn', 973965760, N'thuyle@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NVT01', N'Nguyễn Văn', N'An', N'Nam', CAST(N'1989-04-20 00:00:00.0000000' AS DateTime2), N'Cửa hàng trưởng', CAST(N'2016-01-02 00:00:00.0000000' AS DateTime2), N'Đồng Nai', 964387648, N'annguyen@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NVT02', N'Hoàng Nguyễn Thảo', N'My', N'N?', CAST(N'1989-04-20 00:00:00.0000000' AS DateTime2), N'Cửa hàng trưởng', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'Đà Nẵng', 978537664, N'myhoang@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NVTN01', N'Lê', N'Trân', N'N?', CAST(N'1991-11-17 00:00:00.0000000' AS DateTime2), N'Nhân viên thu ngân', CAST(N'2016-01-02 00:00:00.0000000' AS DateTime2), N'TPHCM', 9.748726E+08, N'letran@gmail.com')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [ViTri], [NgayBD], [DiaChi], [DienThoai], [E-Mail]) VALUES (N'NVTN02', N'Vũ Thị', N'Trinh', N'N?', CAST(N'1990-04-02 00:00:00.0000000' AS DateTime2), N'Nhân viên thu ngân', CAST(N'2016-01-01 00:00:00.0000000' AS DateTime2), N'Long An', 9.853875E+08, N'trinhvu@gmail.com')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN01', N'NVK01', CAST(N'2016-04-03 00:00:00.0000000' AS DateTime2), N'Apple Store')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN02', N'NVK01', CAST(N'2016-05-05 00:00:00.0000000' AS DateTime2), N'Apple Store')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN03', N'NVK02', CAST(N'2016-05-06 00:00:00.0000000' AS DateTime2), N'FPT')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN04', N'NVK01', CAST(N'2016-06-07 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN05', N'NVK02', CAST(N'2016-11-11 00:00:00.0000000' AS DateTime2), N'Apple Store')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN06', N'NVK01', CAST(N'2016-12-02 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN07', N'NV01', CAST(N'2016-12-19 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN08', N'NV01', CAST(N'2016-12-19 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN09', N'NV01', CAST(N'2016-12-19 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN10', N'NV01', CAST(N'2016-12-19 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN11', N'NV01', CAST(N'2016-12-19 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN12', N'NV01', CAST(N'2016-12-19 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN13', N'NV01', CAST(N'2016-12-19 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN14', N'NV01', CAST(N'2016-12-19 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN15', N'NV01', CAST(N'2016-12-19 00:00:00.0000000' AS DateTime2), N'Viettel')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'PN16', N'NV01', CAST(N'2016-12-27 14:36:24.0000000' AS DateTime2), N'Apple Store')
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'', NULL, N'NV01', CAST(N'2016-12-28 11:20:50.0000000' AS DateTime2))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'PX02', N'KH02', N'NVK01', CAST(N'2016-02-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'PX03', N'KH03', N'NVK02', CAST(N'2016-03-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'PX04', N'KH04', N'NVK02', CAST(N'2016-04-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'PX05', N'KH05', N'NVK02', CAST(N'2016-05-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'PX06', N'KH06', N'NVK01', CAST(N'2016-06-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'PX07', N'KH07', N'NVK02', CAST(N'2016-07-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'PX08', N'KH08', N'NVK02', CAST(N'2016-08-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'PX09', N'KH09', N'NVK01', CAST(N'2016-09-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaKH], [MaNV], [NgayXuat]) VALUES (N'PX10', N'KH10', N'NVK02', CAST(N'2016-10-03 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'IP4', N'AP', N'Iphone 4', N'Apple Store', N'Smartphone', 2000000, N'Còn hàng', N'Trắng', N'Pin 35000mAh', N'Trắng, Thanh lịch', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'IP5', N'AP', N'Iphone 5', N'Apple Store', N'Smartphone', 3000000, N'Còn hàng', N'Đen', N'Pin 35000mAh', N'Đen, Sang trọng', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'IP5S', N'AP', N'Iphone 5S', N'Apple Store', N'Smartphone', 5000000, N'Còn hàng', N'Trắng', N'Pin 4000mAh', N'Trắng, Thanh lịch', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'IP6', N'AP', N'Iphone 6', N'Apple Store', N'Smartphone', 8000000, N'Còn hàng', N'Đen', N'Pin 50000mAh', N'Đen, Sang trọng', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'IP7', N'AP', N'Iphone 7', N'Apple Store', N'Smartphone', 12000000, N'Còn hàng', N'Vàng đồng', N'Pin 5500mAh', N'Gold, Quý phái', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'LG01', N'LG', N'LG G1', N'Viettel', N'Smartphone', 3500000, N'Còn hàng', N'Trắng', N'Pin 4000mAh', N'Trắng, Thanh lịch', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'LG02', N'LG', N'LG G2', N'FPT', N'Smartphone', 4000000, N'Còn hàng', N'Đen', N'Pin 4000mAh', N'Đen, Sang trọng', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'LG03', N'LG', N'LG G3', N'FPT', N'Smartphone', 4500000, N'Hết hàng', N'Đen', N'Pin 45000mAh', N'Đen, Sang trọng', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'LG04', N'LG', N'LG G4', N'Viettel', N'Smartphone', 5000000, N'Còn hàng', N'Trắng', N'Pin 50000mAh', N'Trắng, Thanh lịch', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'LG05', N'LG', N'LG G5', N'Viettel', N'Smartphone', 5000000, N'Hết hàng', N'Đen', N'Pin 50000mAh', N'Đen, Sang trọng', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'OP01', N'OP', N'Oppo Neo 3', N'FPT', N'Smartphone', 3000000, N'Hết hàng', N'Trắng', N'Pin 4000mAh', N'Trắng, Thanh lịch', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'OP02', N'OP', N'Oppo F1', N'FPT', N'Smartphone', 3500000, N'Hết hàng', N'Đen', N'Pin 3500mAh', N'Đen, Sang trọng', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'OP03', N'OP', N'Oppo F1S', N'FPT', N'Smartphone', 4500000, N'Còn hàng', N'Vàng đồng', N'Pin 4000mAh', N'Gold, Quý phái', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'SN01', N'SN', N'Sony Z1', N'FPT', N'Smartphone', 4000000, N'Còn hàng', N'Trắng', N'Pin 4000mAh', N'Trắng, Thanh lịch', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'SN02', N'SN', N'Sony Z2', N'Viettel', N'Smartphone', 5000000, N'Hết hàng', N'Trắng', N'Pin 4000mAh', N'Trắng, Thanh lịch', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'SN03', N'SN', N'Sony Z3', N'FPT', N'Smartphone', 5500000, N'Còn hàng', N'Đen', N'Pin 45000mAh', N'Đen, Sang trọng', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'SN04', N'SN', N'Sony Z4', N'Viettel', N'Smartphone', 7000000, N'Còn hàng', N'Vàng đồng', N'Pin  50000mAh', N'Gold, Quý phái', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'SS01', N'SS', N'Samsung Galaxy S3', N'FPT', N'Smartphone', 1000000, N'Còn hàng', N'Trắng', N'Pin 2000mAh', N'Trắng, Thanh lịch', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'SS02', N'SS', N'Samsung Galaxy S4', N'FPT', N'Smartphone', 1320000, N'Còn hàng', N'Đen', N'Pin 2500mAh', N'Đen , Sang trọng', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'SS03', N'SS', N'Samsung Galaxy S5', N'FPT', N'Smartphone', 2300000, N'Hết hàng', N'Trắng', N'Pin 2750mAh', N'Trắng, Thanh lịch', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'SS04', N'SS', N'Samsung Galaxy S6', N'FPT', N'Smartphone', 3000000, N'Còn hàng', N'Trắng', N'Pin 3000mAh', N'Trắng, Thanh lịch', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'SS05', N'SS', N'Samsung Galaxy S7', N'FPT', N'Smartphone', 4000000, N'Còn hàng', N'Đen', N'Pin 4000mAh', N'Đen, Sang trọng', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'ZF2', N'AS', N'Asus Zenfone 2', N'Viettel', N'Smartphone', 4000000, N'Còn hàng', N'Đen', N'Pin 35000mAh', N'Đen, Sang trọng', 12)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'ZF3', N'AS', N'Asus Zenfone 3', N'Viettel', N'Smartphone', 4500000, N'Hết hàng', N'Đen', N'Pin 3750mAh', N'Đen, Sang trọng', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'ZF4', N'AS', N'Asus Zenfone 4', N'Viettel', N'Smartphone', 4800000, N'Hết hàng', N'Trắng', N'Pin 4000mAh', N'Trắng, Thanh lịch', 24)
INSERT [dbo].[SANPHAM] ([MaSP], [MaHSX], [TenSP], [MaNCC], [MaLoaiSP], [DonGia], [TinhTrang], [Mausac], [Thongsochitiet], [Mota], [Baohanh]) VALUES (N'ZF5', N'AS', N'Asus Zenfone 5', N'Viettel', N'Smartphone', 5000000, N'Còn hàng', N'Đen', N'Pin 5000mAh', N'Đen, Sang trọng', 12)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NV01', N'111111', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NV02', N'222222', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NV03', N'333333', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NV04', N'444444', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NV05', N'555555', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NV06', N'666666', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NV07', N'777777', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NV08', N'888888', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NVK01', N'k11111', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NVK02', N'k22222', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NVKT01', N'kt1111', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NVKT02', N'kt1111', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NVT01', N't11111', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NVT02', N't11111', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NVTN01', N'tn1111', NULL)
INSERT [dbo].[USER] ([MaNV], [Password], [GhiChu]) VALUES (N'NVTN02', N'tn2222', NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [CHITIETHOADON$HÓA ĐƠNCHI TIẾT HÓA ĐƠN]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [CHITIETHOADON$HÓA ĐƠNCHI TIẾT HÓA ĐƠN] ON [dbo].[CHITIETHOADON]
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CHITIETHOADON$SẢN PHẨMCHI TIẾT HÓA ĐƠN]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [CHITIETHOADON$SẢN PHẨMCHI TIẾT HÓA ĐƠN] ON [dbo].[CHITIETHOADON]
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CHITIETPHIEUNHAP$CHI TIẾT PHIẾU NHẬPMaSP]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [CHITIETPHIEUNHAP$CHI TIẾT PHIẾU NHẬPMaSP] ON [dbo].[CHITIETPHIEUNHAP]
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CHITIETPHIEUNHAP$KHO HÀNGCHI TIẾT PHIẾU NHẬP]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [CHITIETPHIEUNHAP$KHO HÀNGCHI TIẾT PHIẾU NHẬP] ON [dbo].[CHITIETPHIEUNHAP]
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CHITIETPHIEUNHAP$PHIẾU NHẬPCHI TIẾT PHIẾU NHẬP]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [CHITIETPHIEUNHAP$PHIẾU NHẬPCHI TIẾT PHIẾU NHẬP] ON [dbo].[CHITIETPHIEUNHAP]
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CHITIETPHIEUXUAT$KHO HÀNGCHI TIẾT PHIẾU XUẤT]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [CHITIETPHIEUXUAT$KHO HÀNGCHI TIẾT PHIẾU XUẤT] ON [dbo].[CHITIETPHIEUXUAT]
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CHITIETPHIEUXUAT$PHIẾU XUẤTCHI TIẾT PHIẾU XUẤT]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [CHITIETPHIEUXUAT$PHIẾU XUẤTCHI TIẾT PHIẾU XUẤT] ON [dbo].[CHITIETPHIEUXUAT]
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [HANGSANXUAT$SẢN PHẨMHÃNG SẢN XUẤT]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [HANGSANXUAT$SẢN PHẨMHÃNG SẢN XUẤT] ON [dbo].[HANGSANXUAT]
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [HOADON$HÓA ĐƠNMaKH]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [HOADON$HÓA ĐƠNMaKH] ON [dbo].[HOADON]
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [HOADON$KHÁCH HÀNGHÓA ĐƠN]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [HOADON$KHÁCH HÀNGHÓA ĐƠN] ON [dbo].[HOADON]
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [HOADON$NHÂN VIÊNHÓA ĐƠN]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [HOADON$NHÂN VIÊNHÓA ĐƠN] ON [dbo].[HOADON]
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KHACHHANG$PrimaryKey]    Script Date: 13/01/2017 22:27:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [KHACHHANG$PrimaryKey] ON [dbo].[KHACHHANG]
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PHIEUNHAP$NHÀ CUNG CẤPPHIẾU NHẬP]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [PHIEUNHAP$NHÀ CUNG CẤPPHIẾU NHẬP] ON [dbo].[PHIEUNHAP]
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PHIEUNHAP$NHÂN VIÊNPHIẾU NHẬP]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [PHIEUNHAP$NHÂN VIÊNPHIẾU NHẬP] ON [dbo].[PHIEUNHAP]
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PHIEUXUAT$NHÂN VIÊNPHIẾU XUẤT]    Script Date: 13/01/2017 22:27:23 ******/
CREATE NONCLUSTERED INDEX [PHIEUXUAT$NHÂN VIÊNPHIẾU XUẤT] ON [dbo].[PHIEUXUAT]
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [USER$NHÂN VIÊNUSER]    Script Date: 13/01/2017 22:27:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [USER$NHÂN VIÊNUSER] ON [dbo].[USER]
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETHOADON] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[CHITIETHOADON] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[CHITIETHOADON] ADD  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] ADD  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[KHOHANG] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[KHOHANG] ADD  DEFAULT ((0)) FOR [BaoHanh]
GO
ALTER TABLE [dbo].[KHOHANG] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[NHACUNGCAP] ADD  DEFAULT ((0)) FOR [Tax]
GO
ALTER TABLE [dbo].[NHACUNGCAP] ADD  DEFAULT ((0)) FOR [SDT]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [Baohanh]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH NOCHECK ADD  CONSTRAINT [CHITIETHOADON$HÓA ĐƠNCHI TIẾT HÓA ĐƠN] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [CHITIETHOADON$HÓA ĐƠNCHI TIẾT HÓA ĐƠN]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH NOCHECK ADD  CONSTRAINT [CHITIETHOADON$SẢN PHẨMCHI TIẾT HÓA ĐƠN] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [CHITIETHOADON$SẢN PHẨMCHI TIẾT HÓA ĐƠN]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH NOCHECK ADD  CONSTRAINT [CHITIETPHIEUNHAP$KHO HÀNGCHI TIẾT PHIẾU NHẬP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[KHOHANG] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [CHITIETPHIEUNHAP$KHO HÀNGCHI TIẾT PHIẾU NHẬP]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH NOCHECK ADD  CONSTRAINT [CHITIETPHIEUNHAP$PHIẾU NHẬPCHI TIẾT PHIẾU NHẬP] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [CHITIETPHIEUNHAP$PHIẾU NHẬPCHI TIẾT PHIẾU NHẬP]
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH NOCHECK ADD  CONSTRAINT [CHITIETPHIEUXUAT$KHO HÀNGCHI TIẾT PHIẾU XUẤT] FOREIGN KEY([MaSP])
REFERENCES [dbo].[KHOHANG] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] CHECK CONSTRAINT [CHITIETPHIEUXUAT$KHO HÀNGCHI TIẾT PHIẾU XUẤT]
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH NOCHECK ADD  CONSTRAINT [CHITIETPHIEUXUAT$PHIẾU XUẤTCHI TIẾT PHIẾU XUẤT] FOREIGN KEY([MaPX])
REFERENCES [dbo].[PHIEUXUAT] ([MaPX])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] CHECK CONSTRAINT [CHITIETPHIEUXUAT$PHIẾU XUẤTCHI TIẾT PHIẾU XUẤT]
GO
ALTER TABLE [dbo].[HANGSANXUAT]  WITH NOCHECK ADD  CONSTRAINT [HANGSANXUAT$SẢN PHẨMHÃNG SẢN XUẤT] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[HANGSANXUAT] CHECK CONSTRAINT [HANGSANXUAT$SẢN PHẨMHÃNG SẢN XUẤT]
GO
ALTER TABLE [dbo].[HOADON]  WITH NOCHECK ADD  CONSTRAINT [HOADON$KHÁCH HÀNGHÓA ĐƠN] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [HOADON$KHÁCH HÀNGHÓA ĐƠN]
GO
ALTER TABLE [dbo].[HOADON]  WITH NOCHECK ADD  CONSTRAINT [HOADON$NHÂN VIÊNHÓA ĐƠN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [HOADON$NHÂN VIÊNHÓA ĐƠN]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH NOCHECK ADD  CONSTRAINT [PHIEUNHAP$NHÀ CUNG CẤPPHIẾU NHẬP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [PHIEUNHAP$NHÀ CUNG CẤPPHIẾU NHẬP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH NOCHECK ADD  CONSTRAINT [PHIEUNHAP$NHÂN VIÊNPHIẾU NHẬP] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [PHIEUNHAP$NHÂN VIÊNPHIẾU NHẬP]
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH NOCHECK ADD  CONSTRAINT [PHIEUXUAT$NHÂN VIÊNPHIẾU XUẤT] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUXUAT] CHECK CONSTRAINT [PHIEUXUAT$NHÂN VIÊNPHIẾU XUẤT]
GO
ALTER TABLE [dbo].[USER]  WITH NOCHECK ADD  CONSTRAINT [USER$NHÂN VIÊNUSER] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [USER$NHÂN VIÊNUSER]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$NHANVIEN$NgaySinh$validation_rule] CHECK  (([NgaySinh]<CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1))))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [SSMA_CC$NHANVIEN$NgaySinh$validation_rule]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[MaHD]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'COLUMN',@level2name=N'MaHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[MaSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'COLUMN',@level2name=N'MaSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[SoLuong]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'COLUMN',@level2name=N'SoLuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[DonGia]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'COLUMN',@level2name=N'DonGia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[GiamGia]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'COLUMN',@level2name=N'GiamGia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'CONSTRAINT',@level2name=N'CHITIETHOADON$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[HÓA ĐƠNCHI TIẾT HÓA ĐƠN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'INDEX',@level2name=N'CHITIETHOADON$HÓA ĐƠNCHI TIẾT HÓA ĐƠN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[SẢN PHẨMCHI TIẾT HÓA ĐƠN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'INDEX',@level2name=N'CHITIETHOADON$SẢN PHẨMCHI TIẾT HÓA ĐƠN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[HÓA ĐƠNCHI TIẾT HÓA ĐƠN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'CONSTRAINT',@level2name=N'CHITIETHOADON$HÓA ĐƠNCHI TIẾT HÓA ĐƠN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETHOADON].[SẢN PHẨMCHI TIẾT HÓA ĐƠN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETHOADON', @level2type=N'CONSTRAINT',@level2name=N'CHITIETHOADON$SẢN PHẨMCHI TIẾT HÓA ĐƠN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[MaPN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'COLUMN',@level2name=N'MaPN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[MaSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'COLUMN',@level2name=N'MaSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[SoLuong]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'COLUMN',@level2name=N'SoLuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[DonGia]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'COLUMN',@level2name=N'ThanhTien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[Ghichu]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'COLUMN',@level2name=N'Ghichu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'CONSTRAINT',@level2name=N'CHITIETPHIEUNHAP$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[CHI TIẾT PHIẾU NHẬPMaSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'INDEX',@level2name=N'CHITIETPHIEUNHAP$CHI TIẾT PHIẾU NHẬPMaSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[KHO HÀNGCHI TIẾT PHIẾU NHẬP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'INDEX',@level2name=N'CHITIETPHIEUNHAP$KHO HÀNGCHI TIẾT PHIẾU NHẬP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[PHIẾU NHẬPCHI TIẾT PHIẾU NHẬP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'INDEX',@level2name=N'CHITIETPHIEUNHAP$PHIẾU NHẬPCHI TIẾT PHIẾU NHẬP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[KHO HÀNGCHI TIẾT PHIẾU NHẬP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'CONSTRAINT',@level2name=N'CHITIETPHIEUNHAP$KHO HÀNGCHI TIẾT PHIẾU NHẬP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUNHAP].[PHIẾU NHẬPCHI TIẾT PHIẾU NHẬP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUNHAP', @level2type=N'CONSTRAINT',@level2name=N'CHITIETPHIEUNHAP$PHIẾU NHẬPCHI TIẾT PHIẾU NHẬP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[MaPX]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'COLUMN',@level2name=N'MaPX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[MaSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'COLUMN',@level2name=N'MaSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[MaKH]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'COLUMN',@level2name=N'MaKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[SoLuong]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'COLUMN',@level2name=N'SoLuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[Ngayxuat]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'COLUMN',@level2name=N'Ngayxuat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[Gioxuat]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'COLUMN',@level2name=N'Gioxuat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[GhiChu]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'CONSTRAINT',@level2name=N'CHITIETPHIEUXUAT$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[KHO HÀNGCHI TIẾT PHIẾU XUẤT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'INDEX',@level2name=N'CHITIETPHIEUXUAT$KHO HÀNGCHI TIẾT PHIẾU XUẤT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[PHIẾU XUẤTCHI TIẾT PHIẾU XUẤT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'INDEX',@level2name=N'CHITIETPHIEUXUAT$PHIẾU XUẤTCHI TIẾT PHIẾU XUẤT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[KHO HÀNGCHI TIẾT PHIẾU XUẤT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'CONSTRAINT',@level2name=N'CHITIETPHIEUXUAT$KHO HÀNGCHI TIẾT PHIẾU XUẤT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[CHITIETPHIEUXUAT].[PHIẾU XUẤTCHI TIẾT PHIẾU XUẤT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CHITIETPHIEUXUAT', @level2type=N'CONSTRAINT',@level2name=N'CHITIETPHIEUXUAT$PHIẾU XUẤTCHI TIẾT PHIẾU XUẤT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT].[MaHSX]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT', @level2type=N'COLUMN',@level2name=N'MaHSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT].[MaSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT', @level2type=N'COLUMN',@level2name=N'MaSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT].[MaNCC]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT', @level2type=N'COLUMN',@level2name=N'MaNCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT].[TenHSX]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT', @level2type=N'COLUMN',@level2name=N'TenHSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT].[XuatXu]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT', @level2type=N'COLUMN',@level2name=N'XuatXu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT].[MoTa]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT', @level2type=N'COLUMN',@level2name=N'MoTa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT', @level2type=N'CONSTRAINT',@level2name=N'HANGSANXUAT$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT].[SẢN PHẨMHÃNG SẢN XUẤT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT', @level2type=N'INDEX',@level2name=N'HANGSANXUAT$SẢN PHẨMHÃNG SẢN XUẤT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HANGSANXUAT].[SẢN PHẨMHÃNG SẢN XUẤT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HANGSANXUAT', @level2type=N'CONSTRAINT',@level2name=N'HANGSANXUAT$SẢN PHẨMHÃNG SẢN XUẤT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[MaHD]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'COLUMN',@level2name=N'MaHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[MaKH]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'COLUMN',@level2name=N'MaKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[MaNV]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[NgayLapHD]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'COLUMN',@level2name=N'NgayLapHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'CONSTRAINT',@level2name=N'HOADON$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[HÓA ĐƠNMaKH]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'INDEX',@level2name=N'HOADON$HÓA ĐƠNMaKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[KHÁCH HÀNGHÓA ĐƠN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'INDEX',@level2name=N'HOADON$KHÁCH HÀNGHÓA ĐƠN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[NHÂN VIÊNHÓA ĐƠN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'INDEX',@level2name=N'HOADON$NHÂN VIÊNHÓA ĐƠN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[KHÁCH HÀNGHÓA ĐƠN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'CONSTRAINT',@level2name=N'HOADON$KHÁCH HÀNGHÓA ĐƠN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[HOADON].[NHÂN VIÊNHÓA ĐƠN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HOADON', @level2type=N'CONSTRAINT',@level2name=N'HOADON$NHÂN VIÊNHÓA ĐƠN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[MaKH]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'MaKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[HoKH]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'HoKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[TenKH]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'TenKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[DiaChi]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'DiaChi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[DienThoai]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'DienThoai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[E-Mail]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'E-Mail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[Mathegiamgia]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'Mathegiamgia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[GhiChu]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[PrimaryKey1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'CONSTRAINT',@level2name=N'KHACHHANG$PrimaryKey1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHACHHANG].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'INDEX',@level2name=N'KHACHHANG$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[MaSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'COLUMN',@level2name=N'MaSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[TenSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'COLUMN',@level2name=N'TenSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[MauSac]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'COLUMN',@level2name=N'MauSac'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[Hinh]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'COLUMN',@level2name=N'Hinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[KieuDang]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'COLUMN',@level2name=N'KieuDang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[DonGia]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'COLUMN',@level2name=N'DonGia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[SoLuong]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'COLUMN',@level2name=N'SoLuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[BaoHanh]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'COLUMN',@level2name=N'BaoHanh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[GiaBan]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'COLUMN',@level2name=N'GiaBan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[KHOHANG].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHOHANG', @level2type=N'CONSTRAINT',@level2name=N'KHOHANG$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP].[MaNCC]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP', @level2type=N'COLUMN',@level2name=N'MaNCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP].[TenNCC]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP', @level2type=N'COLUMN',@level2name=N'TenNCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP].[TenNDD]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP', @level2type=N'COLUMN',@level2name=N'TenNDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP].[DiaChi]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP', @level2type=N'COLUMN',@level2name=N'DiaChi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP].[Tax]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP', @level2type=N'COLUMN',@level2name=N'Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP].[Fax]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP].[SDT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP', @level2type=N'COLUMN',@level2name=N'SDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP].[E-Mail]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP', @level2type=N'COLUMN',@level2name=N'E-Mail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHACUNGCAP].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHACUNGCAP', @level2type=N'CONSTRAINT',@level2name=N'NHACUNGCAP$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[MaNV]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[HoNV]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'HoNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[TenNV]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'TenNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[GioiTinh]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'GioiTinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[NgaySinh]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'NgaySinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[ViTri]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'ViTri'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[NgayBD]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'NgayBD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[DiaChi]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'DiaChi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[DienThoai]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'DienThoai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[E-Mail]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'E-Mail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[NHANVIEN].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'CONSTRAINT',@level2name=N'NHANVIEN$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP].[MaPN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'COLUMN',@level2name=N'MaPN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP].[MaNV]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP].[NgayNhap]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'COLUMN',@level2name=N'NgayNhap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP].[MaNCC]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'COLUMN',@level2name=N'MaNCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'CONSTRAINT',@level2name=N'PHIEUNHAP$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP].[NHÀ CUNG CẤPPHIẾU NHẬP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'INDEX',@level2name=N'PHIEUNHAP$NHÀ CUNG CẤPPHIẾU NHẬP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP].[NHÂN VIÊNPHIẾU NHẬP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'INDEX',@level2name=N'PHIEUNHAP$NHÂN VIÊNPHIẾU NHẬP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP].[NHÀ CUNG CẤPPHIẾU NHẬP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'CONSTRAINT',@level2name=N'PHIEUNHAP$NHÀ CUNG CẤPPHIẾU NHẬP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUNHAP].[NHÂN VIÊNPHIẾU NHẬP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'CONSTRAINT',@level2name=N'PHIEUNHAP$NHÂN VIÊNPHIẾU NHẬP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUXUAT].[MaPX]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUXUAT', @level2type=N'COLUMN',@level2name=N'MaPX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUXUAT].[MaKH]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUXUAT', @level2type=N'COLUMN',@level2name=N'MaKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUXUAT].[MaNV]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUXUAT', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUXUAT].[NgayXuat]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUXUAT', @level2type=N'COLUMN',@level2name=N'NgayXuat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUXUAT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUXUAT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUXUAT].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUXUAT', @level2type=N'CONSTRAINT',@level2name=N'PHIEUXUAT$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUXUAT].[NHÂN VIÊNPHIẾU XUẤT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUXUAT', @level2type=N'INDEX',@level2name=N'PHIEUXUAT$NHÂN VIÊNPHIẾU XUẤT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[PHIEUXUAT].[NHÂN VIÊNPHIẾU XUẤT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUXUAT', @level2type=N'CONSTRAINT',@level2name=N'PHIEUXUAT$NHÂN VIÊNPHIẾU XUẤT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[MaSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'MaSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[MaHSX]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'MaHSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[TenSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'TenSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[MaNCC]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'MaNCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[MaLoaiSP]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'MaLoaiSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[DonGia]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'DonGia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[TinhTrang]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'TinhTrang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[Mausac]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'Mausac'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[Thongsochitiet]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'Thongsochitiet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[Mota]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'Mota'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[Baohanh]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'COLUMN',@level2name=N'Baohanh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[SANPHAM].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SANPHAM', @level2type=N'CONSTRAINT',@level2name=N'SANPHAM$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[USER].[MaNV]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[USER].[Password]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[USER].[GhiChu]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[USER]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[USER].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER', @level2type=N'CONSTRAINT',@level2name=N'USER$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[USER].[NHÂN VIÊNUSER]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER', @level2type=N'INDEX',@level2name=N'USER$NHÂN VIÊNUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'CSDL_QLBH.[USER].[NHÂN VIÊNUSER]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER', @level2type=N'CONSTRAINT',@level2name=N'USER$NHÂN VIÊNUSER'
GO
USE [master]
GO
ALTER DATABASE [QLBH_BT] SET  READ_WRITE 
GO
