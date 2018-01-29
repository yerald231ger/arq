USE [dbEscuela]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 29/01/2018 12:25:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Id] [int] NULL,
	[Nombre] [varchar](255) NULL,
	[FechaNacimiento] [datetime2](7) NULL,
	[CursoActual] [int] NULL,
	[UpDate] [datetime2](7) NULL,
	[ModDate] [datetime2](7) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 29/01/2018 12:25:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[Id] [int] NOT NULL,
	[HoraInicio] [datetime2](7) NOT NULL,
	[HoraFinal] [datetime2](7) NOT NULL,
	[Dia] [tinyint] NOT NULL,
	[IdMateria] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Listas]    Script Date: 29/01/2018 12:25:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Listas](
	[Id] [int] NOT NULL,
	[IdProfesor] [int] NOT NULL,
	[IdAlumno] [int] NOT NULL,
	[IdMateria] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 29/01/2018 12:25:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[IdSalon] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 29/01/2018 12:25:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[Id] [int] NULL,
	[Nombre] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salones]    Script Date: 29/01/2018 12:25:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salones](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Alumnos] ([Id], [Nombre], [FechaNacimiento], [CursoActual], [UpDate], [ModDate], [IsActive]) VALUES (1, N'Luis Perez', CAST(N'1989-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Alumnos] ([Id], [Nombre], [FechaNacimiento], [CursoActual], [UpDate], [ModDate], [IsActive]) VALUES (2, N'Juan Lopez', CAST(N'1989-01-01T00:00:00.0000000' AS DateTime2), 3, CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), 0)
GO
INSERT [dbo].[Alumnos] ([Id], [Nombre], [FechaNacimiento], [CursoActual], [UpDate], [ModDate], [IsActive]) VALUES (3, N'Ana Gonzalez', CAST(N'1989-01-01T00:00:00.0000000' AS DateTime2), 3, CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Alumnos] ([Id], [Nombre], [FechaNacimiento], [CursoActual], [UpDate], [ModDate], [IsActive]) VALUES (4, N'Laura Sanchez', CAST(N'1989-01-01T00:00:00.0000000' AS DateTime2), 3, CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), 0)
GO
INSERT [dbo].[Alumnos] ([Id], [Nombre], [FechaNacimiento], [CursoActual], [UpDate], [ModDate], [IsActive]) VALUES (5, N'Antonio Ruiz', CAST(N'1989-01-01T00:00:00.0000000' AS DateTime2), 3, CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), 0)
GO
INSERT [dbo].[Alumnos] ([Id], [Nombre], [FechaNacimiento], [CursoActual], [UpDate], [ModDate], [IsActive]) VALUES (6, N'Pedro Jimenez', CAST(N'1989-01-01T00:00:00.0000000' AS DateTime2), 2, CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2012-12-12T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (1, CAST(N'1900-01-01T08:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T10:00:00.0000000' AS DateTime2), 1, 1)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (2, CAST(N'1900-01-01T10:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T12:00:00.0000000' AS DateTime2), 1, 2)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (3, CAST(N'1900-01-01T12:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T14:00:00.0000000' AS DateTime2), 1, 3)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (4, CAST(N'1900-01-01T08:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T12:00:00.0000000' AS DateTime2), 2, 1)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (5, CAST(N'1900-01-01T12:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T14:00:00.0000000' AS DateTime2), 2, 2)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (6, CAST(N'1900-01-01T10:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T12:00:00.0000000' AS DateTime2), 3, 3)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (7, CAST(N'1900-01-01T12:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T14:00:00.0000000' AS DateTime2), 3, 1)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (8, CAST(N'1900-01-01T08:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T10:00:00.0000000' AS DateTime2), 4, 2)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (9, CAST(N'1900-01-01T10:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T12:00:00.0000000' AS DateTime2), 4, 3)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (10, CAST(N'1900-01-01T12:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T14:00:00.0000000' AS DateTime2), 4, 1)
GO
INSERT [dbo].[Horarios] ([Id], [HoraInicio], [HoraFinal], [Dia], [IdMateria]) VALUES (11, CAST(N'1900-01-01T08:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T12:00:00.0000000' AS DateTime2), 5, 2)
GO
INSERT [dbo].[Listas] ([Id], [IdProfesor], [IdAlumno], [IdMateria]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[Listas] ([Id], [IdProfesor], [IdAlumno], [IdMateria]) VALUES (2, 1, 2, 1)
GO
INSERT [dbo].[Listas] ([Id], [IdProfesor], [IdAlumno], [IdMateria]) VALUES (3, 1, 3, 1)
GO
INSERT [dbo].[Listas] ([Id], [IdProfesor], [IdAlumno], [IdMateria]) VALUES (4, 1, 1, 2)
GO
INSERT [dbo].[Listas] ([Id], [IdProfesor], [IdAlumno], [IdMateria]) VALUES (5, 1, 2, 2)
GO
INSERT [dbo].[Listas] ([Id], [IdProfesor], [IdAlumno], [IdMateria]) VALUES (6, 1, 3, 2)
GO
INSERT [dbo].[Listas] ([Id], [IdProfesor], [IdAlumno], [IdMateria]) VALUES (7, 2, 4, 3)
GO
INSERT [dbo].[Listas] ([Id], [IdProfesor], [IdAlumno], [IdMateria]) VALUES (8, 2, 5, 3)
GO
INSERT [dbo].[Listas] ([Id], [IdProfesor], [IdAlumno], [IdMateria]) VALUES (9, 2, 6, 3)
GO
INSERT [dbo].[Materias] ([Id], [Nombre], [IdSalon]) VALUES (1, N'Historia', 1)
GO
INSERT [dbo].[Materias] ([Id], [Nombre], [IdSalon]) VALUES (2, N'Biología', 1)
GO
INSERT [dbo].[Materias] ([Id], [Nombre], [IdSalon]) VALUES (3, N'Matemáticas', 4)
GO
INSERT [dbo].[Profesores] ([Id], [Nombre]) VALUES (1, N'Roberto Juarez')
GO
INSERT [dbo].[Profesores] ([Id], [Nombre]) VALUES (2, N'Marcela Herrera')
GO
INSERT [dbo].[Salones] ([Id], [Nombre]) VALUES (1, N'1A')
GO
INSERT [dbo].[Salones] ([Id], [Nombre]) VALUES (2, N'1B')
GO
INSERT [dbo].[Salones] ([Id], [Nombre]) VALUES (3, N'2A')
GO
INSERT [dbo].[Salones] ([Id], [Nombre]) VALUES (4, N'2B')
GO
/****** Object:  StoredProcedure [dbo].[spr_alumnos]    Script Date: 29/01/2018 12:25:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gerardo Sanchez
-- Create date: 29/01/2018
-- Description:	Trae al menos 10 alumnos
-- =============================================
CREATE PROCEDURE [dbo].[spr_alumnos] 
	@top int = 10
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @Query nvarchar (max) = 'SELECT TOP ' + CONVERT(varchar(10), @top) + ' * FROM [dbEscuela].[dbo].[Alumnos] WHERE IsActive = 1';
	
	EXEC sp_executesql  @Query

END
GO
