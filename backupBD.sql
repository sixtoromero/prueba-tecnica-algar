﻿USE [master]
GO
/****** Object:  Database [DBAlgart]    Script Date: 26/07/2021 22:27:11 ******/
CREATE DATABASE [DBAlgart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBAlgart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBAlgart.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBAlgart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBAlgart_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBAlgart] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBAlgart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBAlgart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBAlgart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBAlgart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBAlgart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBAlgart] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBAlgart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBAlgart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBAlgart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBAlgart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBAlgart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBAlgart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBAlgart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBAlgart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBAlgart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBAlgart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBAlgart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBAlgart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBAlgart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBAlgart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBAlgart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBAlgart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBAlgart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBAlgart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBAlgart] SET  MULTI_USER 
GO
ALTER DATABASE [DBAlgart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBAlgart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBAlgart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBAlgart] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBAlgart] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBAlgart] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBAlgart] SET QUERY_STORE = OFF
GO
USE [DBAlgart]
GO
/****** Object:  Table [dbo].[Caracteristicas]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caracteristicas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Caracteristicas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carretera]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carretera](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaId] [int] NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Carretera] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarreterasporTramos]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarreterasporTramos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarretaraId] [int] NULL,
	[TramoId] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_CarreterasporTramos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comunas]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comunas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Kilometros] [int] NULL,
 CONSTRAINT [PK_Comunas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tramos]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tramos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CaracteristicaId] [int] NULL,
	[Kilometros] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Tramos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TramosporComunas]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TramosporComunas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TramoId] [int] NULL,
	[ComunaId] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_TramosporComunas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carretera]  WITH CHECK ADD  CONSTRAINT [FK_Carretera_Categorias] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categorias] ([Id])
GO
ALTER TABLE [dbo].[Carretera] CHECK CONSTRAINT [FK_Carretera_Categorias]
GO
ALTER TABLE [dbo].[CarreterasporTramos]  WITH CHECK ADD  CONSTRAINT [FK_CarreterasporTramos_Carretera] FOREIGN KEY([CarretaraId])
REFERENCES [dbo].[Carretera] ([Id])
GO
ALTER TABLE [dbo].[CarreterasporTramos] CHECK CONSTRAINT [FK_CarreterasporTramos_Carretera]
GO
ALTER TABLE [dbo].[CarreterasporTramos]  WITH CHECK ADD  CONSTRAINT [FK_CarreterasporTramos_Tramos] FOREIGN KEY([TramoId])
REFERENCES [dbo].[Tramos] ([Id])
GO
ALTER TABLE [dbo].[CarreterasporTramos] CHECK CONSTRAINT [FK_CarreterasporTramos_Tramos]
GO
ALTER TABLE [dbo].[Tramos]  WITH CHECK ADD  CONSTRAINT [FK_Tramos_Caracteristicas] FOREIGN KEY([CaracteristicaId])
REFERENCES [dbo].[Caracteristicas] ([Id])
GO
ALTER TABLE [dbo].[Tramos] CHECK CONSTRAINT [FK_Tramos_Caracteristicas]
GO
ALTER TABLE [dbo].[TramosporComunas]  WITH CHECK ADD  CONSTRAINT [FK_TramosporComunas_Comunas] FOREIGN KEY([ComunaId])
REFERENCES [dbo].[Comunas] ([Id])
GO
ALTER TABLE [dbo].[TramosporComunas] CHECK CONSTRAINT [FK_TramosporComunas_Comunas]
GO
ALTER TABLE [dbo].[TramosporComunas]  WITH CHECK ADD  CONSTRAINT [FK_TramosporComunas_Tramos] FOREIGN KEY([TramoId])
REFERENCES [dbo].[Tramos] ([Id])
GO
ALTER TABLE [dbo].[TramosporComunas] CHECK CONSTRAINT [FK_TramosporComunas_Tramos]
GO
/****** Object:  StoredProcedure [dbo].[uspCategoriasDelete]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspCategoriasDelete]	
	@Id INT	
AS
BEGIN
SET NOCOUNT ON;
BEGIN 	
BEGIN TRANSACTION
	BEGIN TRY		
		
						
		DELETE FROM [dbo].[Categorias] WHERE Id = @Id

COMMIT TRANSACTION
			SELECT 'Success'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			SELECT ERROR_MESSAGE();
		END CATCH
	END
END

GO
/****** Object:  StoredProcedure [dbo].[uspCategoriasInsert]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspCategoriasInsert]	
	@Descripcion NVARCHAR(250)	
AS
BEGIN
SET NOCOUNT ON;
BEGIN 	
BEGIN TRANSACTION
	BEGIN TRY		
		
						
		INSERT INTO [dbo].[Categorias] (
			Descripcion,
			Fecha
		) VALUES (
			@Descripcion
			,GETDATE()			
		)		

COMMIT TRANSACTION
			SELECT 'Success'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			SELECT ERROR_MESSAGE();
		END CATCH
	END
END

GO
/****** Object:  StoredProcedure [dbo].[uspCategoriasUpdate]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspCategoriasUpdate]	
	@Id INT
	,@Descripcion NVARCHAR(250)	
AS
BEGIN
SET NOCOUNT ON;
BEGIN 	
BEGIN TRANSACTION
	BEGIN TRY		
		
						
		UPDATE [dbo].[Categorias] SET Descripcion = @Descripcion WHERE Id = @Id

COMMIT TRANSACTION
			SELECT 'Success'
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			SELECT ERROR_MESSAGE();
		END CATCH
	END
END

GO
/****** Object:  StoredProcedure [dbo].[UspgetCategorias]    Script Date: 26/07/2021 22:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UspgetCategorias]
AS
	SELECT Id, Descripcion, Fecha
	FROM Categorias

GO
USE [master]
GO
ALTER DATABASE [DBAlgart] SET  READ_WRITE 
GO