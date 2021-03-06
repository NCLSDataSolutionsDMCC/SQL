--- Database name:  	DB_STG_TALOS
--- DBMS name:      	Microsoft SQL Server 2017
--- Created on:     	5/19/2019 2:42:18 AM
--- Project Name:	TALOS Integration & Reporting
--- Application:	VyB (Visual Your Business)
--- DB Layer:		STG
--- DB Name:		DB_STG_TALOS
--- Auhor:		Florian Nicolas (External)
--- Description:	Creation of the table TB_JAF_AZIZ_CITIES_FS
--------------------------------------------------------------------
USE DB_VYB_STG_TALOS
GO
IF OBJECT_ID('TB_JAF_AZIZ_CITIES_FS', 'U') IS NOT NULL
DROP TABLE dbo.TB_JAF_AZIZ_CITIES_FS
DROP SYNONYM dbo.SYN_TB_JAF_AZIZ_CITIES_FS
GO
USE DB_VYB_STG_TALOS
GO
--- CREATE TABLE WITH THE ATTRIBUTES
CREATE TABLE TB_JAF_AZIZ_CITIES_FS (
   CITY_ID              	VARCHAR(256)         NOT NULL,
   CITY_NAME            	VARCHAR(256)         NULL,
   ASSOCIATE_TERRITORY_ID 	CHAR(10)             NULL
)
GO
--- PROPERTIES AND COLUMNS DESCRIPTIONS INFORMATION IN SQL SERVER SYSTEM
IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_CITIES_FS') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_CITIES_FS'  
END 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   '- Client Name: Philip Morris International
   - Client Location: Dubai (UAE)
   - Application Name: VyB (Visual Your Business)Client: Philip Morris International
   - Client Location: Dubai (UAE)
   - Application Name: VyB (Visual Your Business)
   - Application Description: VyB is BI application that enable to load internal PMI data from the source system to last DB layer in order to build data reports and interactive data visualization applications. The data reports and data visualizations applications are developed for internal use.
   
   - Component Type: Table
   - Component Name: TB_JAF_AZIZ_CITIES_FS
   - Component Description: Table that contains all the Talos cities referential data', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_CITIES_FS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_CITIES_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CITY_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_CITIES_FS', 'column', 'CITY_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Territory Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_CITIES_FS', 'column', 'CITY_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_CITIES_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CITY_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_CITIES_FS', 'column', 'CITY_NAME'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'Territory Name',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_CITIES_FS', 'column', 'CITY_NAME'
GO 
--- TABLE PRIMARY KEY
ALTER TABLE TB_JAF_AZIZ_CITIES_FS
   ADD CONSTRAINT PK_TB_JAF_AZIZ_CITIES_FS PRIMARY KEY (CITY_ID)
GO
--- SYNONYMS CREATIONS FOR THE CONSIDERED TABLE
CREATE SYNONYM SYN_TB_JAF_AZIZ_CITIES_FS FOR TB_JAF_AZIZ_CITIES_FS
GO
--------------------------------------------------------------------