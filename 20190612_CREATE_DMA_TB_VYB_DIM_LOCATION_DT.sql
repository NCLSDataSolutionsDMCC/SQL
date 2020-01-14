--- Database name:  	DB_VYB_DMA
--- DBMS name:      	Microsoft SQL Server 2017
--- Created on:     	6/12/2019 9:42:18 AM
--- Project Name:	TALOS Integration & Reporting
--- Application:	VyB (Visualize Your Business)
--- DB Layer:		DMA
--- DB Name:		DB_VYB_DMA
--- Author:		Florian Nicolas (External)
--- Description:	Creation of the table TB_VYB_DIM_LOCATION_DT 
--------------------------------------------------------------------
----- STATEMENT DROP TABLE AND SYNONYM IF EXIST
USE DB_VYB_DMA
GO
IF OBJECT_ID('TB_VYB_DIM_LOCATION_DT', 'U') IS NOT NULL
DROP TABLE TB_VYB_DIM_LOCATION_DT
IF OBJECT_ID('SYN_TB_VYB_DIM_LOCATION_DT', 'SN') IS NOT NULL
DROP SYNONYM SYN_TB_VYB_DIM_LOCATION_DT
IF OBJECT_ID('PK_TB_VYB_DIM_LOCATION_DT', 'PK') IS NOT NULL
ALTER TABLE TB_VYB_DIM_LOCATION_DT DROP CONSTRAINT PK_TB_VYB_DIM_LOCATION_DT;
GO
----- STATEMENT CREATE TABLE
USE DB_VYB_DMA
GO
CREATE TABLE TB_VYB_DIM_LOCATION_DT (
   SR_KEY_LOCATION			INT                  	NOT NULL,
   BK_KEY_LOCATION_TERRITORY 		INT                  	NULL,
   LOCATION_TERRITORY_EN_NM 		VARCHAR(256)         	NULL,
   LOCATION_TERRITORY_AR_NM 		NTEXT                	NULL,
   BK_KEY_LOCATION_REGION 		INT                  	NULL,
   LOCATION_REGION_EN_NM 		VARCHAR(256)         	NULL,
   LOCATION_REGION_AR_NM 		NTEXT                	NULL,
   BK_KEY_LOCATION_CITY 		INT                  	NULL,
   LOCATION_CITY_EN_NM  		VARCHAR(256)         	NULL,
   LOCATION_CITY_AR_NM  		NTEXT                	NULL,
   LOCATION_CITY_ZIP_CD 		VARCHAR(256)         	NULL,
   LOCATION_COUNTRY_EN_NM 		VARCHAR(256)         	NULL,
   LOCATION_COUNTRY_AR_NM 		NTEXT                	NULL,
   LOCATION_LATITUDE_ID 		VARCHAR(256)         	NULL,
   LOCATION_LONGITUDE_ID 		VARCHAR(256)         	NULL,
   TK_KEY_VLD_FM_DT     		SMALLDATETIME		NULL,
   TK_KEY_VLD_TO_DT     		SMALLDATETIME		NULL,
   TK_KEY_AUDIT_PROCESS_ID_INS 		INT                  	NULL,
   TK_KEY_AUDIT_PROCESS_ID_UPD 		INT                  	NULL,
   TK_KEY_INL_PPN_TMS   		SMALLDATETIME		NULL,
   TK_KEY_LAST_PPN_TMS  		SMALLDATETIME		NULL,
   TK_KEY_UNQ_ID_SRC_STM 		VARCHAR(256)		NULL,
   TK_KEY_LAST_VSN_FL   		BIT			NULL,
   TK_KEY_HASH_VALUE    		VARCHAR(256)         	NULL,
   TK_KEY_PROJECT_CD    		VARCHAR(256)         	NULL,
   CONSTRAINT PK_TB_VYB_DIM_LOCATION_DT PRIMARY KEY NONCLUSTERED (SR_KEY_LOCATION)
)
GO
IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT' 
END 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   '- Client Name: Philip Morris International
   - Client Location: Dubai (UAE)
   - Application Name: VyB (Visualize Your Business)
   - Client Location: Dubai (UAE)
   - Application Description: VyB is BI application that enable to load internal PMI data from the source system to last DB layer in order to build data reports and interactive data visualization applications. The data reports and data visualizations applications are developed for internal use.
   - Component Type: Entity
   - Component Name: Table Dim Location
   - Specific Project / Application Source Code: Shared (All Projects)', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SR_KEY_LOCATION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'SR_KEY_LOCATION'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Surrogate Key Location',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'SR_KEY_LOCATION'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BK_KEY_LOCATION_TERRITORY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'BK_KEY_LOCATION_TERRITORY'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Business Key Location Territory',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'BK_KEY_LOCATION_TERRITORY'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_TERRITORY_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_TERRITORY_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location Territory English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_TERRITORY_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_TERRITORY_AR_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_TERRITORY_AR_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location Territory Arabic Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_TERRITORY_AR_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BK_KEY_LOCATION_REGION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'BK_KEY_LOCATION_REGION'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Business Key Location Region',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'BK_KEY_LOCATION_REGION'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_REGION_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_REGION_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location Region English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_REGION_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_REGION_AR_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_REGION_AR_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location Region Arabic Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_REGION_AR_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BK_KEY_LOCATION_CITY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'BK_KEY_LOCATION_CITY'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Business Key Location City',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'BK_KEY_LOCATION_CITY'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_CITY_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_CITY_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location City English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_CITY_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_CITY_AR_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_CITY_AR_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location City Arabic Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_CITY_AR_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_CITY_ZIP_CD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_CITY_ZIP_CD'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location City Zip Code',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_CITY_ZIP_CD'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_COUNTRY_EN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_COUNTRY_EN_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location Country English Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_COUNTRY_EN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_COUNTRY_AR_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_COUNTRY_AR_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location Country Arabic Name',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_COUNTRY_AR_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_LATITUDE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_LATITUDE_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location Latitude Identifier',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_LATITUDE_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOCATION_LONGITUDE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_LONGITUDE_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Location Longitude Identifier',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'LOCATION_LONGITUDE_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_VLD_FM_DT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_VLD_FM_DT'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Valid From Date',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_VLD_FM_DT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_VLD_TO_DT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_VLD_TO_DT'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Valid To Date',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_VLD_TO_DT'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_AUDIT_PROCESS_ID_INS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_AUDIT_PROCESS_ID_INS'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Link To Auditing Process Table Record Created',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_AUDIT_PROCESS_ID_INS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_AUDIT_PROCESS_ID_UPD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_AUDIT_PROCESS_ID_UPD'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Link To Auditing Process Table Record Update',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_AUDIT_PROCESS_ID_UPD'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_INL_PPN_TMS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_INL_PPN_TMS'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Record Creation Timestamp',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_INL_PPN_TMS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_LAST_PPN_TMS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_LAST_PPN_TMS'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Record Update Timestamp',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_LAST_PPN_TMS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_UNQ_ID_SRC_STM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_UNQ_ID_SRC_STM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Concatenated Value All Primary Key Columns Plus Separators',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_UNQ_ID_SRC_STM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_LAST_VSN_FL')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_LAST_VSN_FL'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Boolean Indicating if Record is the Last Version or Not',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_LAST_VSN_FL'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_HASH_VALUE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_HASH_VALUE'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Hash-value All Non-Technical Columns in the Table',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_HASH_VALUE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_VYB_DIM_LOCATION_DT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TK_KEY_PROJECT_CD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_PROJECT_CD'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Technical Key Project Code',
   'user', @CURRENTUSER, 'table', 'TB_VYB_DIM_LOCATION_DT', 'column', 'TK_KEY_PROJECT_CD'
GO
----- STATEMENT CREATE TABLE
CREATE SYNONYM SYN_TB_VYB_DIM_LOCATION_DT FOR TB_VYB_DIM_LOCATION_DT
GO