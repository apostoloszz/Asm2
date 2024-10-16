USE [master]
GO
/****** Object:  Database [Asmjava5]    Script Date: 10/10/2024 1:03:10 AM ******/
CREATE DATABASE [Asmjava5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Asmjava5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Asmjava5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Asmjava5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Asmjava5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Asmjava5] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Asmjava5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Asmjava5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Asmjava5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Asmjava5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Asmjava5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Asmjava5] SET ARITHABORT OFF 
GO
ALTER DATABASE [Asmjava5] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Asmjava5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Asmjava5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Asmjava5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Asmjava5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Asmjava5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Asmjava5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Asmjava5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Asmjava5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Asmjava5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Asmjava5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Asmjava5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Asmjava5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Asmjava5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Asmjava5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Asmjava5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Asmjava5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Asmjava5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Asmjava5] SET  MULTI_USER 
GO
ALTER DATABASE [Asmjava5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Asmjava5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Asmjava5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Asmjava5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Asmjava5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Asmjava5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Asmjava5] SET QUERY_STORE = ON
GO
ALTER DATABASE [Asmjava5] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Asmjava5]
GO
/****** Object:  Table [dbo].[chitietdonhang]    Script Date: 10/10/2024 1:03:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietdonhang](
	[ctdh_id] [int] IDENTITY(1,1) NOT NULL,
	[donhang_id] [int] NOT NULL,
	[sanpham_id] [int] NOT NULL,
	[soluong] [int] NOT NULL,
	[gia] [decimal](10, 0) NOT NULL,
	[chietkhau] [int] NOT NULL,
	[tonggia] [decimal](10, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ctdh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donhang]    Script Date: 10/10/2024 1:03:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donhang](
	[donhang_id] [int] IDENTITY(1,1) NOT NULL,
	[khachhang_id] [int] NOT NULL,
	[ngaytao] [datetime] NOT NULL,
	[ngaythanhtoan] [datetime] NULL,
	[trangthai] [nvarchar](20) NOT NULL,
	[phivanchuyen] [decimal](10, 0) NOT NULL,
	[tonggia] [decimal](10, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[donhang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giatrithuoctinh]    Script Date: 10/10/2024 1:03:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giatrithuoctinh](
	[gttt_id] [int] IDENTITY(1,1) NOT NULL,
	[thuoctinh_id] [int] NOT NULL,
	[giatri] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gttt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 10/10/2024 1:03:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[khachhang_id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](20) NOT NULL,
	[diachi] [nvarchar](100) NOT NULL,
	[tinhthanhpho] [nvarchar](20) NOT NULL,
	[quanhuyen] [nvarchar](20) NOT NULL,
	[phuongxa] [nvarchar](20) NOT NULL,
	[sodienthoai] [nvarchar](11) NOT NULL,
	[ngaytao] [datetime] NOT NULL,
	[trangthai] [bit] NOT NULL,
	[taikhoan_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[khachhang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 10/10/2024 1:03:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[sanpham_id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[mota] [nvarchar](100) NOT NULL,
	[soluong] [int] NOT NULL,
	[gia] [decimal](10, 0) NOT NULL,
	[chietkhau] [int] NOT NULL,
	[anh] [nvarchar](100) NOT NULL,
	[trangthai] [bit] NOT NULL,
	[url] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 10/10/2024 1:03:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[taikhoan_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](20) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
	[email] [nvarchar](20) NOT NULL,
	[ngaytao] [datetime] NOT NULL,
	[quyen] [nvarchar](20) NOT NULL,
	[trangthai] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taikhoan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuoctinh]    Script Date: 10/10/2024 1:03:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuoctinh](
	[thuoctinh_id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[thuoctinh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuoctinhsanpham]    Script Date: 10/10/2024 1:03:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuoctinhsanpham](
	[ttsp_id] [int] IDENTITY(1,1) NOT NULL,
	[gttt_id] [int] NOT NULL,
	[sanpham_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ttsp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[donhang] ADD  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[khachhang] ADD  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[taikhoan] ADD  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([donhang_id])
REFERENCES [dbo].[donhang] ([donhang_id])
GO
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([sanpham_id])
REFERENCES [dbo].[sanpham] ([sanpham_id])
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[khachhang] ([khachhang_id])
GO
ALTER TABLE [dbo].[giatrithuoctinh]  WITH CHECK ADD FOREIGN KEY([thuoctinh_id])
REFERENCES [dbo].[thuoctinh] ([thuoctinh_id])
GO
ALTER TABLE [dbo].[khachhang]  WITH CHECK ADD FOREIGN KEY([taikhoan_id])
REFERENCES [dbo].[taikhoan] ([taikhoan_id])
GO
ALTER TABLE [dbo].[thuoctinhsanpham]  WITH CHECK ADD FOREIGN KEY([gttt_id])
REFERENCES [dbo].[giatrithuoctinh] ([gttt_id])
GO
ALTER TABLE [dbo].[thuoctinhsanpham]  WITH CHECK ADD FOREIGN KEY([sanpham_id])
REFERENCES [dbo].[sanpham] ([sanpham_id])
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD CHECK  (([trangthai]='dahuy' OR [trangthai]='chuathanhtoan' OR [trangthai]='dathanhtoan'))
GO
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD CHECK  (([quyen]='nhanvien' OR [quyen]='khachhang' OR [quyen]='admin'))
GO
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD CHECK  (([trangthai]='dakhoa' OR [trangthai]='dakichhoat' OR [trangthai]='chuakichhoat'))
GO
USE [master]
GO
ALTER DATABASE [Asmjava5] SET  READ_WRITE 
GO
