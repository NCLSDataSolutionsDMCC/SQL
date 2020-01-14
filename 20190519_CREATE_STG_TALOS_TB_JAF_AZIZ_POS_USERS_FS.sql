--- Database name:  	DB_STG_TALOS
--- DBMS name:      	Microsoft SQL Server 2017
--- Created on:     	5/19/2019 2:42:18 AM
--- Project Name:	TALOS Integration & Reporting
--- Application:	VyB (Visual Your Business)
--- DB Layer:		STG
--- DB Name:		DB_STG_TALOS
--- Auhor:		Florian Nicolas (External)
--- Description:	Creation of the table TB_JAF_AZIZ_POS_USERS_FS
--------------------------------------------------------------------
USE DB_VYB_STG_TALOS
GO
IF OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS', 'U') IS NOT NULL
DROP TABLE dbo.TB_JAF_AZIZ_POS_USERS_FS 
DROP SYNONYM dbo.SYN_TB_JAF_AZIZ_POS_USERS_FS
GO
USE DB_VYB_STG_TALOS
GO
--- CREATE TABLE WITH THE ATTRIBUTES
CREATE TABLE TB_JAF_AZIZ_POS_USERS_FS (
   ID                   VARCHAR(256)         NOT NULL,
   USERNAME             VARCHAR(256)         NULL,
   LOGIN_NAME           VARCHAR(256)         NULL,
   EMAIL                VARCHAR(256)         NULL,
   USER_STATUS          VARCHAR(256)         NULL,
   REGISTRED_FROM_APPLICATION_ID VARCHAR(256)         NULL,
   CREATED_ON           VARCHAR(256)             NULL,
   LAST_UPDATE          VARCHAR(256)             NULL,
   ACTIVATION_USER      VARCHAR(256)         NULL,
   PREFERRED_LANGUAGE   VARCHAR(256)         NULL,
   OWNER_NAME           VARCHAR(256)         NULL,
   REGION_ID            VARCHAR(256)         NULL,
   CITY_ID              VARCHAR(256)         NULL,
   TERRITORY_ID         VARCHAR(256)         NULL,
   ADDRESS              VARCHAR(256)         NULL,
   MOBILE_NUMBER        VARCHAR(256)         NULL,
   BUSINESS_NAME        NTEXT        NULL,
   CONTACT_NAME         VARCHAR(256)         NULL,
   CONTACT_TELEPHONE    VARCHAR(256)         NULL,
   BUSINESS_CATEGORY    VARCHAR(256)         NULL,
   BUSINESS_SUB_CATEGORY VARCHAR(256)         NULL,
   PRIORITY             VARCHAR(250)              NULL,
   LATITUDE             VARCHAR(256)         NULL,
   LONGITUDE            VARCHAR(256)         NULL,
   ASSOCIATED_WAREHOUSE_USER_ID VARCHAR(256)         NULL
)
GO

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS'  
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
   - Component Name: TB_JAF_AZIZ_POS_USERS_FS
   - Component Description: Table that contains all the Talos users', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USERNAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'USERNAME'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Username',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'USERNAME'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOGIN_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'LOGIN_NAME'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Login Name',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'LOGIN_NAME'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'EMAIL')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'EMAIL'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Email Address',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'EMAIL'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_STATUS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'USER_STATUS'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Status',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'USER_STATUS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'REGISTRED_FROM_APPLICATION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'REGISTRED_FROM_APPLICATION_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Registration Application',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'REGISTRED_FROM_APPLICATION_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CREATED_ON')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'CREATED_ON'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Date Time Creation',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'CREATED_ON'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LAST_UPDATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'LAST_UPDATE'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Date Time Update',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'LAST_UPDATE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ACTIVATION_USER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'ACTIVATION_USER'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Flag Activation',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'ACTIVATION_USER'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PREFERRED_LANGUAGE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'PREFERRED_LANGUAGE'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Preferred Language',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'PREFERRED_LANGUAGE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'OWNER_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'OWNER_NAME'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Owner Name',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'OWNER_NAME'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'REGION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'REGION_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Region Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'REGION_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CITY_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'CITY_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User City Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'CITY_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TERRITORY_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'TERRITORY_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Territory Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'TERRITORY_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ADDRESS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'ADDRESS'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Address',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'ADDRESS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'MOBILE_NUMBER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'MOBILE_NUMBER'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Mobile Phone Number',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'MOBILE_NUMBER'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUSINESS_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'BUSINESS_NAME'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Business Name',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'BUSINESS_NAME'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONTACT_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'CONTACT_NAME'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Contact Name',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'CONTACT_NAME'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONTACT_TELEPHONE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'CONTACT_TELEPHONE'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Phone Number',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'CONTACT_TELEPHONE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUSINESS_CATEGORY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'BUSINESS_CATEGORY'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Business CateGOry',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'BUSINESS_CATEGORY'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUSINESS_SUB_CATEGORY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'BUSINESS_SUB_CATEGORY'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Business CateGOry Sub',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'BUSINESS_SUB_CATEGORY'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PRIORITY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'PRIORITY'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Priority',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'PRIORITY'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LATITUDE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'LATITUDE'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Latitude',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'LATITUDE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LONGITUDE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'LONGITUDE'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Longitude',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'LONGITUDE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_POS_USERS_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ASSOCIATED_WAREHOUSE_USER_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'ASSOCIATED_WAREHOUSE_USER_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'POS User Assoc. Warehouse User ID',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_POS_USERS_FS', 'column', 'ASSOCIATED_WAREHOUSE_USER_ID'
GO
--- CREATE PRIMARY KEY 
ALTER TABLE TB_JAF_AZIZ_POS_USERS_FS
   ADD CONSTRAINT PK_TB_JAF_AZIZ_POS_USERS_FS PRIMARY KEY (ID)
GO
--- CREATE SYNONYM 
CREATE SYNONYM SYN_TB_JAF_AZIZ_POS_USERS_FS FOR TB_JAF_AZIZ_POS_USERS_FS
GO