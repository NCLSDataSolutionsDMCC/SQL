--- Database name:  	DB_VYB_ODS_TALOS
--- DBMS name:      	Microsoft SQL Server 2017
--- Created on:     	5/19/2019 2:42:18 AM
--- Project Name:	TALOS Integration & Reporting
--- Application:	VyB (Visualize Your Business)
--- DB Layer:		ODS
--- DB Name:		DB_VYB_ODS_TALOS
--- Author:		Florian Nicolas (External)
--- Description:	Creation of the table TB_JAF_AZIZ_USER_QUIZ_FS
--------------------------------------------------------------------
----- TO RUN NOT THE FIRST TIME OF EXECUTION 
USE DB_VYB_ODS_TALOS
GO
IF OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS', 'U') IS NOT NULL
DROP TABLE dbo.TB_JAF_AZIZ_USER_QUIZ_FS
DROP SYNONYM SYN_TB_JAF_AZIZ_USER_QUIZ_FS
GO
USE DB_VYB_ODS_TALOS
GO
----- TO RUN EVERYTIME CREATE TABLE STATEMENT
CREATE TABLE TB_JAF_AZIZ_USER_QUIZ_FS (
   USER_ID              VARCHAR(256)         NULL,
   QUIZ_ID              VARCHAR(256)         NULL,
   QUIZ_CREATION_DT     SMALLDATETIME        NULL,
   QUIZ_UPDATE_DT       SMALLDATETIME        NULL,
   QUIZ_STATUS_FLG_NM   VARCHAR(256)         NULL,
   QUIZ_SCORE_AMNT      VARCHAR(256)         NULL,
   QUIZ_WAGER_AMNT      VARCHAR(256)         NULL,
   QUIZ_MODE_NM         VARCHAR(256)         NULL,
   USER_USER_REGION_ID  VARCHAR(256)         NULL,
   USER_USER_CITY_ID    VARCHAR(256)         NULL
)
GO
IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS' 
END 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   '- Client Name: Philip Morris International
   - Client Location: Dubai (UAE)
   - Application Name: VyB (Visualize Your Business)
   - Client Location: Dubai (UAE)
   - Application Name: VyB (Visual Your Business)
   - Application Description: VyB is BI application that enable to load internal PMI data from the source system to last DB layer in order to build data reports and interactive data visualization applications. The data reports and data visualizations applications are developed for internal use.
   
   - Component Type: Table
   - Component Name: TB_JAF_AZIZ_USER_QUIZ_FS
   - Component Description: Table that contains all the Talos quiz/users', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'USER_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'USER_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'QUIZ_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Quiz Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'QUIZ_CREATION_DT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_CREATION_DT'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Started On',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_CREATION_DT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'QUIZ_UPDATE_DT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_UPDATE_DT'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Last Update',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_UPDATE_DT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'QUIZ_STATUS_FLG_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_STATUS_FLG_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Status',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_STATUS_FLG_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'QUIZ_SCORE_AMNT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_SCORE_AMNT'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Score',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_SCORE_AMNT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'QUIZ_WAGER_AMNT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_WAGER_AMNT'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Wager Amount',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_WAGER_AMNT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'QUIZ_MODE_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_MODE_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Quiz Mode',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'QUIZ_MODE_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_USER_REGION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'USER_USER_REGION_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Region Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'USER_USER_REGION_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_QUIZ_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_USER_CITY_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'USER_USER_CITY_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User City Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_QUIZ_FS', 'column', 'USER_USER_CITY_ID'
GO
---- CREATION OF THE SYNONYM
CREATE SYNONYM SYN_TB_JAF_AZIZ_USER_QUIZ_FS FOR TB_JAF_AZIZ_USER_QUIZ_FS
GO