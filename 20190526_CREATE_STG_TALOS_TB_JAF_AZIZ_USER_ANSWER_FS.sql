--- Database name:  	DB_VYB_ODS_TALOS
--- DBMS name:      	Microsoft SQL Server 2017
--- Created on:     	5/19/2019 2:42:18 AM
--- Project Name:	TALOS Integration & Reporting
--- Application:	VyB (Visualize Your Business)
--- DB Layer:		ODS
--- DB Name:		DB_VYB_ODS_TALOS
--- Author:		Florian Nicolas (External)
--- Description:	Creation of the table TB_JAF_AZIZ_USER_ANSWER_FS
--------------------------------------------------------------------
----- TO RUN NOT THE FIRST TIME OF EXECUTION 
USE DB_VYB_ODS_TALOS
GO
IF OBJECT_ID('TB_JAF_AZIZ_USER_ANSWER_FS', 'U') IS NOT NULL
DROP TABLE dbo.TB_JAF_AZIZ_USER_ANSWER_FS
DROP SYNONYM SYN_TB_JAF_AZIZ_USER_ANSWER_FS
GO
USE DB_VYB_ODS_TALOS
GO
----- TO RUN EVERYTIME CREATE TABLE STATEMENT
CREATE TABLE TB_JAF_AZIZ_USER_ANSWER_FS (
   ANSWER_USER_ID       VARCHAR(256)         NULL,
   ANSWER_QUIZ_ID       VARCHAR(256)         NULL,
   ANSWER_QUESTION_ID   VARCHAR(256)         NULL,
   ANSWER_CREATION_DT   SMALLDATETIME        NULL,
   ANSWER_UPDATE_DT     SMALLDATETIME        NULL,
   ANSWER_ID            VARCHAR(256)         NULL
)
GO
IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ANSWER_FS') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS' 
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
   - Component Name: TB_JAF_AZIZ_USER_ANSWER_FS
   - Component Description: Table that contains all the Talos answers/users data', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ANSWER_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ANSWER_USER_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_USER_ID'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Answer User Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_USER_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ANSWER_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ANSWER_QUIZ_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_QUIZ_ID'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Quiz Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_QUIZ_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ANSWER_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ANSWER_QUESTION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_QUESTION_ID'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Answer Question Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_QUESTION_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ANSWER_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ANSWER_CREATION_DT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_CREATION_DT'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Record Date Time',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_CREATION_DT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ANSWER_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ANSWER_UPDATE_DT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_UPDATE_DT'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Record Last Update',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_UPDATE_DT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ANSWER_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ANSWER_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_ID'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Answer Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ANSWER_FS', 'column', 'ANSWER_ID'
GO
---- CREATION OF THE SYNONYM
CREATE SYNONYM SYN_TB_JAF_AZIZ_USER_ANSWER_FS FOR TB_JAF_AZIZ_USER_ANSWER_FS
GO