USE [dbEscuela]
GO

/****** Object:  StoredProcedure [dbo].[spr_alumnos]    Script Date: 29/01/2018 12:23:20 p. m. ******/
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

