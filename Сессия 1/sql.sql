USE [master]
GO
/****** Object:  Database [Poprizhonok]    Script Date: 11.05.2022 17:35:50 ******/
CREATE DATABASE [Poprizhonok]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Poprizhonok', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Poprizhonok.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Poprizhonok_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Poprizhonok_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Poprizhonok] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Poprizhonok].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Poprizhonok] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Poprizhonok] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Poprizhonok] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Poprizhonok] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Poprizhonok] SET ARITHABORT OFF 
GO
ALTER DATABASE [Poprizhonok] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Poprizhonok] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Poprizhonok] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Poprizhonok] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Poprizhonok] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Poprizhonok] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Poprizhonok] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Poprizhonok] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Poprizhonok] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Poprizhonok] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Poprizhonok] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Poprizhonok] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Poprizhonok] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Poprizhonok] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Poprizhonok] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Poprizhonok] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Poprizhonok] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Poprizhonok] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Poprizhonok] SET  MULTI_USER 
GO
ALTER DATABASE [Poprizhonok] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Poprizhonok] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Poprizhonok] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Poprizhonok] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Poprizhonok] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Poprizhonok] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Poprizhonok] SET QUERY_STORE = OFF
GO
USE [Poprizhonok]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_AgentType] [int] NOT NULL,
	[Id_Director] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[INN] [nvarchar](100) NOT NULL,
	[KPP] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Logo] [nvarchar](100) NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agent_SellPoint]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_SellPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Agent] [int] NOT NULL,
	[Id_SellPoint] [int] NOT NULL,
 CONSTRAINT [PK_Agent_SellPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentType]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AgentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Patronomic] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emploee]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emploee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](100) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Patronomic] [nvarchar](100) NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[Id_Pasport] [int] NOT NULL,
	[BankDetails] [nvarchar](100) NOT NULL,
	[IsFamily] [bit] NOT NULL,
 CONSTRAINT [PK_Emploee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_HealthProblem]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_HealthProblem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Emploee] [int] NOT NULL,
	[Id_HealthProblem] [int] NOT NULL,
 CONSTRAINT [PK_Employee_HealthProblem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HealthProblem]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthProblem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Desription] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_HealthProblem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Id_MaterialType] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[MinimumCount] [int] NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MinimumPrice]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MinimumPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Agent] [int] NOT NULL,
	[Id_Product] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_MinimumPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Height] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Length] [int] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasport]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Series] [nvarchar](100) NOT NULL,
	[Number] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Pasport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriorityHistory]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriorityHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Agent] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_PriorityHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Article] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Id_ProductType] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Id_Package] [int] NULL,
	[Netto] [float] NULL,
	[Brutto] [float] NULL,
	[Sertificate] [nvarchar](100) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Standard]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Standard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Product] [int] NOT NULL,
	[Id_Standard] [int] NOT NULL,
 CONSTRAINT [PK_Product_Standard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Time] [time](7) NOT NULL,
	[CostPrice] [money] NOT NULL,
	[ManufactureNumber] [int] NOT NULL,
	[EmployeeCount] [int] NOT NULL,
 CONSTRAINT [PK_Production] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_material]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Production] [int] NOT NULL,
	[Id_Material] [int] NOT NULL,
 CONSTRAINT [PK_Production_material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Product] [int] NOT NULL,
	[Id_Agent] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellPoint]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SellPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Standard]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Standard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Standard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Material] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Storage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[INN] [nvarchar](100) NOT NULL,
	[Id_SupplierType] [int] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierType]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SupplierType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplyHistory]    Script Date: 11.05.2022 17:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplyHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Material] [int] NOT NULL,
	[Id_Supplier] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_SupplyHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_AgentType] FOREIGN KEY([Id_AgentType])
REFERENCES [dbo].[AgentType] ([Id])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_AgentType]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Director] FOREIGN KEY([Id_Director])
REFERENCES [dbo].[Director] ([Id])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Director]
GO
ALTER TABLE [dbo].[Agent_SellPoint]  WITH CHECK ADD  CONSTRAINT [FK_Agent_SellPoint_Agent] FOREIGN KEY([Id_Agent])
REFERENCES [dbo].[Agent] ([Id])
GO
ALTER TABLE [dbo].[Agent_SellPoint] CHECK CONSTRAINT [FK_Agent_SellPoint_Agent]
GO
ALTER TABLE [dbo].[Agent_SellPoint]  WITH CHECK ADD  CONSTRAINT [FK_Agent_SellPoint_SellPoint] FOREIGN KEY([Id_SellPoint])
REFERENCES [dbo].[SellPoint] ([Id])
GO
ALTER TABLE [dbo].[Agent_SellPoint] CHECK CONSTRAINT [FK_Agent_SellPoint_SellPoint]
GO
ALTER TABLE [dbo].[Emploee]  WITH CHECK ADD  CONSTRAINT [FK_Emploee_Pasport] FOREIGN KEY([Id_Pasport])
REFERENCES [dbo].[Pasport] ([Id])
GO
ALTER TABLE [dbo].[Emploee] CHECK CONSTRAINT [FK_Emploee_Pasport]
GO
ALTER TABLE [dbo].[Employee_HealthProblem]  WITH CHECK ADD  CONSTRAINT [FK_Employee_HealthProblem_Emploee] FOREIGN KEY([Id_Emploee])
REFERENCES [dbo].[Emploee] ([Id])
GO
ALTER TABLE [dbo].[Employee_HealthProblem] CHECK CONSTRAINT [FK_Employee_HealthProblem_Emploee]
GO
ALTER TABLE [dbo].[Employee_HealthProblem]  WITH CHECK ADD  CONSTRAINT [FK_Employee_HealthProblem_HealthProblem] FOREIGN KEY([Id_HealthProblem])
REFERENCES [dbo].[HealthProblem] ([Id])
GO
ALTER TABLE [dbo].[Employee_HealthProblem] CHECK CONSTRAINT [FK_Employee_HealthProblem_HealthProblem]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([Id_MaterialType])
REFERENCES [dbo].[MaterialType] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[MinimumPrice]  WITH CHECK ADD  CONSTRAINT [FK_MinimumPrice_Agent] FOREIGN KEY([Id_Agent])
REFERENCES [dbo].[Agent] ([Id])
GO
ALTER TABLE [dbo].[MinimumPrice] CHECK CONSTRAINT [FK_MinimumPrice_Agent]
GO
ALTER TABLE [dbo].[MinimumPrice]  WITH CHECK ADD  CONSTRAINT [FK_MinimumPrice_Product] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[MinimumPrice] CHECK CONSTRAINT [FK_MinimumPrice_Product]
GO
ALTER TABLE [dbo].[PriorityHistory]  WITH CHECK ADD  CONSTRAINT [FK_PriorityHistory_Agent] FOREIGN KEY([Id_Agent])
REFERENCES [dbo].[Agent] ([Id])
GO
ALTER TABLE [dbo].[PriorityHistory] CHECK CONSTRAINT [FK_PriorityHistory_Agent]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Package] FOREIGN KEY([Id_Package])
REFERENCES [dbo].[Package] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Package]
GO
ALTER TABLE [dbo].[Product_Standard]  WITH CHECK ADD  CONSTRAINT [FK_Product_Standard_Product] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product_Standard] CHECK CONSTRAINT [FK_Product_Standard_Product]
GO
ALTER TABLE [dbo].[Product_Standard]  WITH CHECK ADD  CONSTRAINT [FK_Product_Standard_Standard] FOREIGN KEY([Id_Standard])
REFERENCES [dbo].[Standard] ([Id])
GO
ALTER TABLE [dbo].[Product_Standard] CHECK CONSTRAINT [FK_Product_Standard_Standard]
GO
ALTER TABLE [dbo].[Production_material]  WITH CHECK ADD  CONSTRAINT [FK_Production_material_Material] FOREIGN KEY([Id_Material])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[Production_material] CHECK CONSTRAINT [FK_Production_material_Material]
GO
ALTER TABLE [dbo].[Production_material]  WITH CHECK ADD  CONSTRAINT [FK_Production_material_Production] FOREIGN KEY([Id_Production])
REFERENCES [dbo].[Production] ([Id])
GO
ALTER TABLE [dbo].[Production_material] CHECK CONSTRAINT [FK_Production_material_Production]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Agent] FOREIGN KEY([Id_Agent])
REFERENCES [dbo].[Agent] ([Id])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Agent]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[Storage]  WITH CHECK ADD  CONSTRAINT [FK_Storage_Material] FOREIGN KEY([Id_Material])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[Storage] CHECK CONSTRAINT [FK_Storage_Material]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierType] FOREIGN KEY([Id_SupplierType])
REFERENCES [dbo].[SupplierType] ([Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_SupplierType]
GO
ALTER TABLE [dbo].[SupplyHistory]  WITH CHECK ADD  CONSTRAINT [FK_SupplyHistory_Material] FOREIGN KEY([Id_Material])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[SupplyHistory] CHECK CONSTRAINT [FK_SupplyHistory_Material]
GO
ALTER TABLE [dbo].[SupplyHistory]  WITH CHECK ADD  CONSTRAINT [FK_SupplyHistory_Supplier] FOREIGN KEY([Id_Supplier])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[SupplyHistory] CHECK CONSTRAINT [FK_SupplyHistory_Supplier]
GO
USE [master]
GO
ALTER DATABASE [Poprizhonok] SET  READ_WRITE 
GO
