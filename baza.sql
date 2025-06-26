USE [master]
GO
/****** Object:  Database [mozaika]    Script Date: 27.06.2025 1:53:35 ******/
CREATE DATABASE [mozaika]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mozaika', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\mozaika.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mozaika_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\mozaika_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [mozaika] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mozaika].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mozaika] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mozaika] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mozaika] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mozaika] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mozaika] SET ARITHABORT OFF 
GO
ALTER DATABASE [mozaika] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mozaika] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mozaika] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mozaika] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mozaika] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mozaika] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mozaika] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mozaika] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mozaika] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mozaika] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mozaika] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mozaika] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mozaika] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mozaika] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mozaika] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mozaika] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mozaika] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mozaika] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mozaika] SET  MULTI_USER 
GO
ALTER DATABASE [mozaika] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mozaika] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mozaika] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mozaika] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mozaika] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mozaika] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [mozaika] SET QUERY_STORE = ON
GO
ALTER DATABASE [mozaika] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [mozaika]
GO
/****** Object:  Table [dbo].[Material_suppliers_import]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_suppliers_import](
	[id_material] [int] IDENTITY(1,1) NOT NULL,
	[naimenovadie_materiala] [varchar](255) NULL,
	[postavshik] [varchar](255) NULL,
	[Id_sklada] [nchar](10) NULL,
	[id_materialaimprots] [int] NULL,
	[id_postavchiki] [int] NULL,
 CONSTRAINT [PK_Material_suppliers_import] PRIMARY KEY CLUSTERED 
(
	[id_material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_type_import]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_type_import](
	[id_materialaimprots] [int] IDENTITY(1,1) NOT NULL,
	[tip_materiala] [varchar](255) NOT NULL,
	[prosent_poter_sirya] [float] NULL,
	[id_product] [int] NULL,
 CONSTRAINT [PK_Material_type_import] PRIMARY KEY CLUSTERED 
(
	[id_materialaimprots] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials_import]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials_import](
	[id_importmaterial] [int] IDENTITY(1,1) NOT NULL,
	[naimenovanie_materiala] [varchar](255) NULL,
	[tip_materiala] [varchar](255) NULL,
	[cena_edinici_materiala] [float] NULL,
	[kolichestvo_na_sklade] [int] NULL,
	[minimalnoe_kolichestvo] [int] NULL,
	[kolichestvo_v_ypakovke] [int] NULL,
	[edinica_izmereniya] [varchar](255) NULL,
	[Id_sotrudnika] [int] NULL,
 CONSTRAINT [PK_Materials_import] PRIMARY KEY CLUSTERED 
(
	[id_importmaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menegers]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menegers](
	[id_menegera] [int] IDENTITY(1,1) NOT NULL,
	[poisk_i_registraciya_partnerov] [varchar](255) NULL,
	[izmenenie_reitinga_partnera] [int] NULL,
	[istoriya_reytinga] [int] NULL,
	[priem_zayavok_ot_partnerov] [varchar](255) NULL,
	[Id_sotrudnika] [int] NULL,
 CONSTRAINT [PK_menegers] PRIMARY KEY CLUSTERED 
(
	[id_menegera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producsiya]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producsiya](
	[id_producsii] [int] IDENTITY(1,1) NOT NULL,
	[articul] [int] NULL,
	[tip] [varchar](255) NULL,
	[naimenovanie] [varchar](255) NULL,
	[opisanie] [varchar](255) NULL,
	[izobrazhenie] [image] NULL,
	[minimalnaya_stoimost_dlya_partnera] [bigint] NULL,
	[razmer_upakovki] [bigint] NULL,
	[ves_bez_ypakovki] [int] NULL,
	[ves_s_ypakovkoi] [int] NULL,
	[sertificat_kachestva] [varchar](255) NULL,
	[nomer_standarta] [int] NULL,
	[istoriya_izmeneniy_minimalnoy_stoimosti] [varchar](255) NULL,
	[vremya_izgotovleniya] [int] NULL,
	[sebestoimost] [int] NULL,
	[nomer_ceha] [int] NULL,
	[kolichestvo_chelovek] [int] NULL,
	[materiali_dlya_proizvodstva] [varchar](255) NULL,
	[Id_sklada] [int] NULL,
 CONSTRAINT [PK_producsiya] PRIMARY KEY CLUSTERED 
(
	[id_producsii] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type_import]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type_import](
	[id_product] [int] IDENTITY(1,1) NOT NULL,
	[tip_producsii] [varchar](255) NULL,
	[koef_tipa_producsii] [float] NULL,
 CONSTRAINT [PK_Product_type_import] PRIMARY KEY CLUSTERED 
(
	[id_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proizvodstvo]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proizvodstvo](
	[id_proizvodstva] [int] IDENTITY(1,1) NOT NULL,
	[id_importmaterial] [int] NOT NULL,
	[id_producsii] [int] NOT NULL,
	[Id_sotrudnika] [int] NULL,
 CONSTRAINT [PK_proizvodstvo] PRIMARY KEY CLUSTERED 
(
	[id_proizvodstva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sklad]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sklad](
	[Id_sklada] [int] IDENTITY(1,1) NOT NULL,
	[registraciya_postupleniy_materialov] [varchar](255) NULL,
	[rezervirovanie_materialov_dlya_proizvodstva] [varchar](255) NULL,
	[otpusk_i_spisanie_materialov_so_sklada_v_proizvodstvo] [varchar](255) NULL,
	[pstuplenie_producsii] [varchar](255) NULL,
	[vibitie_producsii] [varchar](255) NULL,
	[informasiya_o_ostatkah] [varchar](255) NULL,
	[dvizheniya_tovarno_materialnih_cennostey] [varchar](255) NULL,
 CONSTRAINT [PK_sklad] PRIMARY KEY CLUSTERED 
(
	[Id_sklada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sotrudniki]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sotrudniki](
	[Id_sotrudnika] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [varchar](255) NULL,
	[data_rojdeniya] [date] NULL,
	[pasportnie_dannie] [bigint] NULL,
	[bankovskie_rekviziti] [bigint] NULL,
	[nalichie_semyi] [bit] NULL,
	[sostoyanie_zdorovya] [varchar](255) NULL,
 CONSTRAINT [PK_sotrudniki] PRIMARY KEY CLUSTERED 
(
	[Id_sotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers_import]    Script Date: 27.06.2025 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers_import](
	[id_postavchiki] [int] IDENTITY(1,1) NOT NULL,
	[naimenovanie_postavchika] [varchar](255) NULL,
	[tip_postavchika] [varchar](255) NULL,
	[INN] [bigint] NULL,
	[reiting] [float] NULL,
	[data_nachala_raboti_s_postavshikom] [int] NULL,
 CONSTRAINT [PK_Suppliers_import] PRIMARY KEY CLUSTERED 
(
	[id_postavchiki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material_suppliers_import] ON 

INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (1, N'������-�������', N'�������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (2, N'������', N'�������������� ����', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (3, N'������', N'�������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (4, N'������', N'�������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (5, N'��������� �����', N'�����������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (6, N'������', N'����������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (7, N'�����', N'����� ����', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (8, N'��������� �����', N'���������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (9, N'����������������� �����', N'�������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (10, N'������� ����', N'����� ����', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (11, N'�����', N'�����������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (12, N'������� �������', N'�������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (13, N'������� �����', N'������ ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (14, N'������� ����', N'�����������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (15, N'����������', N'�������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (16, N'������', N'���������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (17, N'������� ����', N'�����������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (18, N'��������������', N'�������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (19, N'�����', N'���������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (20, N'����� ����������', N'������ ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (21, N'������ ������', N'�����������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (22, N'�����', N'������ ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (23, N'�����', N'����������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (24, N'�����', N'������� ������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (25, N'����������', N'�������������� ����', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (26, N'������', N'�������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (27, N'�����', N'�������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (28, N'����� ����������', N'���������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (29, N'���� �����������', N'���������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (30, N'����������� ����', N'������� ������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (31, N'���������� ������', N'���������������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (32, N'����������', N'����� ����', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (33, N'������� �����', N'������� ������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (34, N'������', N'���������� ���������� ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (35, N'��������� �����', N'������� ������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (36, N'��������������', N'����� ����', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (37, N'������-�������', N'�����������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (38, N'������', N'������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (39, N'������� �������', N'�����������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (40, N'������', N'�����������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (41, N'������ ������', N'������� ������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (42, N'���� �����������', N'������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (43, N'����������������� �����', N'���������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (44, N'���� �����������', N'������������� ����������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (45, N'��������������', N'�������������� ����', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (46, N'������ ������', N'���������� ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (47, N'������ ������', N'������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (48, N'������� �������', N'���������� ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (49, N'������� �������', N'������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (50, N'������������ �������', N'���������� ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (51, N'�����', N'������ ������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (52, N'������� �����', N'������������� ����������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (53, N'������-�������', N'���������� ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (54, N'�����', N'������������� ����������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (55, N'����������������� �����', N'�������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (56, N'��������� �����', N'������ ������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (57, N'����� ����������', N'������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (58, N'�����', N'�������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (59, N'����������������� �����', N'������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (60, N'����������', N'�������� �������������� ����� ', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (61, N'���������� ������', N'������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (62, N'������', N'�������� �������������� ����� ', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (63, N'����������� ����', N'������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (64, N'�����', N'���������� ���������� ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (65, N'����������� ����', N'���������� ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (66, N'��������������', N'���������� ���������� ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (67, N'������������ �������', N'�����������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (68, N'����������� ����', N'������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (69, N'���� �����������', N'�������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (70, N'���������� ������', N'�������� �������������� ����� ', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (71, N'������� �����', N'���������� ���������� ��������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (72, N'������', N'�������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (73, N'������������ �������', N'������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (74, N'����� ����������', N'�������� �������������� ����� ', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (75, N'���������� ������', N'������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (76, N'������', N'�������� �������������� ����� ', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (77, N'�����', N'���������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (78, N'������������ �������', N'�������� �������������� ����� ', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (79, N'������-�������', N'������������', NULL, NULL, NULL)
INSERT [dbo].[Material_suppliers_import] ([id_material], [naimenovadie_materiala], [postavshik], [Id_sklada], [id_materialaimprots], [id_postavchiki]) VALUES (80, N'������� ����', N'���������� ���������� ��������', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Material_suppliers_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Material_type_import] ON 

INSERT [dbo].[Material_type_import] ([id_materialaimprots], [tip_materiala], [prosent_poter_sirya], [id_product]) VALUES (1, N'���������� ���������', 0.0012, NULL)
INSERT [dbo].[Material_type_import] ([id_materialaimprots], [tip_materiala], [prosent_poter_sirya], [id_product]) VALUES (2, N'�������', 0.002, NULL)
INSERT [dbo].[Material_type_import] ([id_materialaimprots], [tip_materiala], [prosent_poter_sirya], [id_product]) VALUES (3, N'����������', 0.0015, NULL)
INSERT [dbo].[Material_type_import] ([id_materialaimprots], [tip_materiala], [prosent_poter_sirya], [id_product]) VALUES (4, N'�������', 0.003, NULL)
INSERT [dbo].[Material_type_import] ([id_materialaimprots], [tip_materiala], [prosent_poter_sirya], [id_product]) VALUES (5, N'�������', 0.0025, NULL)
SET IDENTITY_INSERT [dbo].[Material_type_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Materials_import] ON 

INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (1, N'�����', N'���������� ���������', 15.29, 1570, 5500, 30, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (2, N'������', N'���������� ���������', 18.2, 1030, 3500, 25, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (3, N'����������', N'���������� ���������', 17.2, 2147, 3500, 25, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (4, N'��������������', N'���������� ���������', 17.666666666666668, 3000, 3000, 30, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (5, N'������', N'�������', 13.99, 150, 1000, 50, N'�', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (6, N'������', N'�������', 2.4, 3000, 1500, 500, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (7, N'����������������� �����', N'�������', 21.95, 3000, 2500, 20, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (8, N'�����', N'�������', 27.5, 2300, 1960, 20, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (9, N'����������� ����', N'����������', 54.55, 1200, 1500, 25, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (10, N'������ ������', N'����������', 76.59, 500, 1500, 15, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (11, N'�����', N'�������', 375.96, 1500, 2500, 10, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (12, N'������� ����', N'�������', 15.99, 750, 1500, 100, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (13, N'������-�������', N'�������', 200.9, 1496, 2500, 5, N'�', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (14, N'������� �������', N'�������', 84.39, 511, 1750, 25, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (15, N'��������� �����', N'�������', 4.29, 3000, 1600, 50, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (16, N'������� �����', N'�������', 18.6, 2556, 1600, 25, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (17, N'����� ����������', N'�������', 303.6384, 340, 1500, 25, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (18, N'���� �����������', N'�������', 125.99, 165, 1300, 25, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (19, N'������������ �������', N'����������', 3.45, 450, 1100, 25, N'��', NULL)
INSERT [dbo].[Materials_import] ([id_importmaterial], [naimenovanie_materiala], [tip_materiala], [cena_edinici_materiala], [kolichestvo_na_sklade], [minimalnoe_kolichestvo], [kolichestvo_v_ypakovke], [edinica_izmereniya], [Id_sotrudnika]) VALUES (20, N'���������� ������', N'����������', 700.99, 356, 1200, 25, N'��', NULL)
SET IDENTITY_INSERT [dbo].[Materials_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_type_import] ON 

INSERT [dbo].[Product_type_import] ([id_product], [tip_producsii], [koef_tipa_producsii]) VALUES (1, N'��� ��������� 1', 1.2)
INSERT [dbo].[Product_type_import] ([id_product], [tip_producsii], [koef_tipa_producsii]) VALUES (2, N'��� ��������� 2', 8.59)
INSERT [dbo].[Product_type_import] ([id_product], [tip_producsii], [koef_tipa_producsii]) VALUES (3, N'��� ��������� 3', 3.45)
INSERT [dbo].[Product_type_import] ([id_product], [tip_producsii], [koef_tipa_producsii]) VALUES (4, N'��� ��������� 4', 5.6)
SET IDENTITY_INSERT [dbo].[Product_type_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers_import] ON 

INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (1, N'�����������������', N'���', 9432455179, 8, 42356)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (2, N'�������������', N'���', 7803888520, 7, 42989)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (3, N'�������������� ����', N'���', 8430391035, 7, 42725)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (4, N'����� ����', N'���', 4318170454, 8, 43610)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (5, N'�������� �������������� ����� ', N'���', 7687851800, 7, 42169)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (6, N'����������������', N'���', 6119144874, 9, 44555)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (7, N'������', N'���', 1122170258, 3, 44659)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (8, N'������������', N'���', 8355114917, 5, 44631)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (9, N'�������������������', N'���', 3532367439, 8, 45239)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (10, N'���������� ���������� ��������', N'���', 2362431140, 3, 43425)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (11, N'���������', N'���', 4159215346, 2, 41095)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (12, N'�����������', N'���', 9032455179, 4, 44398)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (13, N'������������� ����������', N'���', 3776671267, 9, 42511)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (14, N'������ ������', N'���', 7447864518, 8, 42178)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (15, N'������� ������', N'���', 9037040523, 6, 42801)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (16, N'���������� ��������', N'���', 6221520857, 4, 42129)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (17, N'������ ��������', N'���', 2262431140, 3, 44185)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (18, N'������� ������', N'���', 4155215346, 7, 42144)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (19, N'�������', N'���', 3961234561, 5, 40505)
INSERT [dbo].[Suppliers_import] ([id_postavchiki], [naimenovanie_postavchika], [tip_postavchika], [INN], [reiting], [data_nachala_raboti_s_postavshikom]) VALUES (20, N'���������������������', N'���', 9600275878, 7, 42722)
SET IDENTITY_INSERT [dbo].[Suppliers_import] OFF
GO
ALTER TABLE [dbo].[Material_suppliers_import]  WITH CHECK ADD  CONSTRAINT [FK_Material_suppliers_import_Material_type_import] FOREIGN KEY([id_materialaimprots])
REFERENCES [dbo].[Material_type_import] ([id_materialaimprots])
GO
ALTER TABLE [dbo].[Material_suppliers_import] CHECK CONSTRAINT [FK_Material_suppliers_import_Material_type_import]
GO
ALTER TABLE [dbo].[Material_suppliers_import]  WITH CHECK ADD  CONSTRAINT [FK_Material_suppliers_import_Suppliers_import] FOREIGN KEY([id_postavchiki])
REFERENCES [dbo].[Suppliers_import] ([id_postavchiki])
GO
ALTER TABLE [dbo].[Material_suppliers_import] CHECK CONSTRAINT [FK_Material_suppliers_import_Suppliers_import]
GO
ALTER TABLE [dbo].[Material_type_import]  WITH CHECK ADD  CONSTRAINT [FK_Material_type_import_Product_type_import] FOREIGN KEY([id_product])
REFERENCES [dbo].[Product_type_import] ([id_product])
GO
ALTER TABLE [dbo].[Material_type_import] CHECK CONSTRAINT [FK_Material_type_import_Product_type_import]
GO
ALTER TABLE [dbo].[Materials_import]  WITH CHECK ADD  CONSTRAINT [FK_Materials_import_Material_suppliers_import] FOREIGN KEY([Id_sotrudnika])
REFERENCES [dbo].[Material_suppliers_import] ([id_material])
GO
ALTER TABLE [dbo].[Materials_import] CHECK CONSTRAINT [FK_Materials_import_Material_suppliers_import]
GO
ALTER TABLE [dbo].[menegers]  WITH CHECK ADD  CONSTRAINT [FK_menegers_sotrudniki] FOREIGN KEY([Id_sotrudnika])
REFERENCES [dbo].[sotrudniki] ([Id_sotrudnika])
GO
ALTER TABLE [dbo].[menegers] CHECK CONSTRAINT [FK_menegers_sotrudniki]
GO
ALTER TABLE [dbo].[producsiya]  WITH CHECK ADD  CONSTRAINT [FK_producsiya_sklad] FOREIGN KEY([Id_sklada])
REFERENCES [dbo].[sklad] ([Id_sklada])
GO
ALTER TABLE [dbo].[producsiya] CHECK CONSTRAINT [FK_producsiya_sklad]
GO
ALTER TABLE [dbo].[proizvodstvo]  WITH CHECK ADD  CONSTRAINT [FK_proizvodstvo_Materials_import] FOREIGN KEY([id_importmaterial])
REFERENCES [dbo].[Materials_import] ([id_importmaterial])
GO
ALTER TABLE [dbo].[proizvodstvo] CHECK CONSTRAINT [FK_proizvodstvo_Materials_import]
GO
ALTER TABLE [dbo].[proizvodstvo]  WITH CHECK ADD  CONSTRAINT [FK_proizvodstvo_producsiya] FOREIGN KEY([id_producsii])
REFERENCES [dbo].[producsiya] ([id_producsii])
GO
ALTER TABLE [dbo].[proizvodstvo] CHECK CONSTRAINT [FK_proizvodstvo_producsiya]
GO
ALTER TABLE [dbo].[proizvodstvo]  WITH CHECK ADD  CONSTRAINT [FK_proizvodstvo_sotrudniki] FOREIGN KEY([Id_sotrudnika])
REFERENCES [dbo].[sotrudniki] ([Id_sotrudnika])
GO
ALTER TABLE [dbo].[proizvodstvo] CHECK CONSTRAINT [FK_proizvodstvo_sotrudniki]
GO
USE [master]
GO
ALTER DATABASE [mozaika] SET  READ_WRITE 
GO
