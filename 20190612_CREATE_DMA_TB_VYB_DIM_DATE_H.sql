--- Database name:  	DB_VYB_DMA
--- DBMS name:      	Microsoft SQL Server 2017
--- Created on:     	6/12/2019 9:42:18 AM
--- Project Name:	TALOS Integration & Reporting
--- Application:	VyB (Visualize Your Business)
--- DB Layer:		DMA
--- DB Name:		DB_VYB_DMA
--- Author:		Florian Nicolas (External)
--- Description:	Creation of the table TB_VYB_DIM_DATE_H 
--------------------------------------------------------------------
----- STATEMENT DROP TABLE AND SYNONYM IF EXIST
USE DB_VYB_DMA
GO
IF OBJECT_ID('TB_VYB_DIM_DATE_H', 'U') IS NOT NULL
DROP TABLE TB_VYB_DIM_DATE_H
IF OBJECT_ID('SYN_TB_VYB_DIM_DATE_H', 'SN') IS NOT NULL
DROP SYNONYM SYN_TB_VYB_DIM_DATE_H
IF OBJECT_ID('PK_TB_VYB_DIM_DATE_H', 'PK') IS NOT NULL
ALTER TABLE TB_VYB_DIM_DATE_H DROP CONSTRAINT PK_TB_VYB_DIM_DATE_H;
GO
----- STATEMENT CREATE TABLE
USE DB_VYB_DMA
GO
CREATE TABLE TB_VYB_DIM_DATE_H (
   SR_KEY_DATE          		INT                  	NOT NULL,
   BK_KEY_DATE          		INT                  	NOT NULL,
   DATE_YEAR_NUM        		INT                  	NULL,
   DATE_YEAR_EN_NM      		VARCHAR(256)         	NULL,
   DATE_YEAR_AR_NM      		NTEXT                	NULL,
   DATE_YEAR_WEEK_NUM   		INT                  	NULL,
   DATE_YEAR_WEEK_EN_NM 		VARCHAR(256)         	NULL,
   DATE_YEAR_MONTH_NUM  		INT                  	NULL,
   DATE_MONTH_DAY_NUM   		INT                  	NULL,
   DATE_DAY_EN_NM       		VARCHAR(256)         	NULL,
   DATE_DAY_AR_NM       		NTEXT                	NULL,
   DATE_MONTH_WEEK_NUM  		INT                  	NULL,
   DATE_MONTH_EN_NM     		VARCHAR(256)         	NULL,
   DATE_MONTH_AR_NM     		NTEXT                	NULL,
   DATE_QUARTER_NUM     		INT                  	NULL,
   DATE_QUARTER_EN_NM   		VARCHAR(256)         	NULL,
   DATE_QUARTER_AR_NM   		NTEXT                	NULL,
   DATE_SEMESTER_NUM    		INT                  	NULL,
   DATE_SEMESTER_EN_NM  		VARCHAR(256)         	NULL,
   DATE_SEMESTER_AR_NM  		NTEXT                	NULL,
   DATE_IS_WEEKEND_FLG  		BIT                  	NULL,
   DATE_IS_HOLIDAY_FLG  		BIT                  	NULL,
   DATE_IS_LAST_DAY_WEEK_FLG 		BIT                  	NULL,
   DATE_IS_LAST_DAY_MONTH_FLG 		BIT                  	NULL,
   DATE_IS_LAST_DAY_SEMESTER_FLG 	BIT                  	NULL,
   DATE_IS_LAST_DAY_YEAR_FLG 		BIT                  	NULL,
   TK_KEY_VLD_FM_DT     		SMALLDATETIME		NULL,
   TK_KEY_VLD_TO_DT     		SMALLDATETIME		NULL,
   TK_KEY_AUDIT_PROCESS_ID_INS 		INT                  	NULL,
   TK_KEY_AUDIT_PROCESS_ID_UPD 		INT                  	NULL,
   TK_KEY_INL_PPN_TMS   		SMALLDATETIME		NULL,
   TK_KEY_LAST_PPN_TMS  		SMALLDATETIME		NULL,
   TK_KEY_UNQ_ID_SRC_STM 		VARCHAR(256)         	NULL,
   TK_KEY_LAST_VSN_FL   		BIT                  	NULL,
   TK_KEY_HASH_VALUE    		VARCHAR(256)         	NULL,
   TK_KEY_PROJECT_CD    		VARCHAR(256)         	NULL,
   CONSTRAINT PK_TB_VYB_DIM_DATE_H PRIMARY KEY NONCLUSTERED (SR_KEY_DATE)
)
GO
IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H' 
END 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   '- Client Name: Philip Morris International
   - Client Location: Dubai (UAE)
   - Application Name: VyB (Visualize Your Business)
   - Client Location: Dubai (UAE)
   - Application Description: VyB is BI application that enable to load internal PMI data from the source system to last DB layer in order to build data reports and interactive data visualization applications. The data reports and data visualizations applications are developed for internal use.
   - Component Type: Entity
   - Component Name: Table Dim Date
   - Specific Project / Application Source Code: Shared (All Projects)', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SR_KEY_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'SR_KEY_DATE'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Surrogate Key Date',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'SR_KEY_DATE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BK_KEY_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'BK_KEY_DATE'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Business Key Date',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'BK_KEY_DATE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_YEAR_NUM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_NUM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Year Number',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_NUM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_YEAR_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Year English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_YEAR_AR_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_AR_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Year Arabic Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_AR_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_YEAR_WEEK_NUM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_WEEK_NUM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Year Week Number',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_WEEK_NUM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_YEAR_WEEK_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_WEEK_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Year Week English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_WEEK_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_YEAR_MONTH_NUM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_MONTH_NUM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Year Month Number',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_YEAR_MONTH_NUM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_MONTH_DAY_NUM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_MONTH_DAY_NUM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Month Day Number',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_MONTH_DAY_NUM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_DAY_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_DAY_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Day English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_DAY_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_DAY_AR_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_DAY_AR_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Day Arabic Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_DAY_AR_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_MONTH_WEEK_NUM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_MONTH_WEEK_NUM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Month Week Number',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_MONTH_WEEK_NUM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_MONTH_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_MONTH_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Month English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_MONTH_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_MONTH_AR_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_MONTH_AR_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Month Arabic Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_MONTH_AR_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_QUARTER_NUM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_QUARTER_NUM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Quarter Number',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_QUARTER_NUM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_QUARTER_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_QUARTER_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Quarter English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_QUARTER_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_QUARTER_AR_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_QUARTER_AR_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Quarter Arabic Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_QUARTER_AR_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_SEMESTER_NUM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_SEMESTER_NUM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Semester Number',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_SEMESTER_NUM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_SEMESTER_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_SEMESTER_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Semester English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_SEMESTER_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_SEMESTER_AR_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_SEMESTER_AR_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Semester Arabic Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_SEMESTER_AR_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_IS_WEEKEND_FLG')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_WEEKEND_FLG'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Is Weekend Flag',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_WEEKEND_FLG'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_IS_HOLIDAY_FLG')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_HOLIDAY_FLG'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Is Holiday Flag',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_HOLIDAY_FLG'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_IS_LAST_DAY_WEEK_FLG')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_LAST_DAY_WEEK_FLG'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Is Last Day Week Flag',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_LAST_DAY_WEEK_FLG'
GO

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_IS_LAST_DAY_MONTH_FLG')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_LAST_DAY_MONTH_FLG'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Is Last Day Month Flag',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_LAST_DAY_MONTH_FLG'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_IS_LAST_DAY_SEMESTER_FLG')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_LAST_DAY_SEMESTER_FLG'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Is Last Day Semester Flag',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_LAST_DAY_SEMESTER_FLG'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATE_IS_LAST_DAY_YEAR_FLG')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_LAST_DAY_YEAR_FLG'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Date Is Last Day Year Flag',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'DATE_IS_LAST_DAY_YEAR_FLG'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_VLD_FM_DT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_VLD_FM_DT'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Valid From Date',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_VLD_FM_DT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_VLD_TO_DT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_VLD_TO_DT'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Valid To Date',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_VLD_TO_DT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_AUDIT_PROCESS_ID_INS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_AUDIT_PROCESS_ID_INS'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Link To Auditing Process Table Record Created',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_AUDIT_PROCESS_ID_INS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_AUDIT_PROCESS_ID_UPD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_AUDIT_PROCESS_ID_UPD'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Link To Auditing Process Table Record Update',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_AUDIT_PROCESS_ID_UPD'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_INL_PPN_TMS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_INL_PPN_TMS'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Record Creation Timestamp',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_INL_PPN_TMS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_LAST_PPN_TMS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_LAST_PPN_TMS'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Record Update Timestamp',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_LAST_PPN_TMS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_UNQ_ID_SRC_STM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_UNQ_ID_SRC_STM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Concatenated Value All Primary Key Columns Plus Separators',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_UNQ_ID_SRC_STM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_LAST_VSN_FL')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_LAST_VSN_FL'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Boolean Indicating if Record is the Last Version or Not',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_LAST_VSN_FL'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_HASH_VALUE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_HASH_VALUE'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Hash-value All Non-Technical Columns in the Table',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_HASH_VALUE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_DATE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_PROJECT_CD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_PROJECT_CD'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Project Code',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_DATE_H', 'column', 'TK_KEY_PROJECT_CD'
GO
----- STATEMENT CREATE TABLE
CREATE SYNONYM SYN_TB_VYB_DIM_DATE_H FOR TB_VYB_DIM_DATE_H
GO