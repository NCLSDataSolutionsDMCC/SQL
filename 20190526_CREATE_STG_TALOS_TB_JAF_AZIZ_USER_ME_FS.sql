--- Database name:  	DB_VYB_ODS_TALOS
--- DBMS name:      	Microsoft SQL Server 2017
--- Created on:     	5/19/2019 2:42:18 AM
--- Project Name:	TALOS Integration & Reporting
--- Application:	VyB (Visualize Your Business)
--- DB Layer:		ODS
--- DB Name:		DB_VYB_ODS_TALOS
--- Author:		Florian Nicolas (External)
--- Description:	Creation of the table TB_JAF_AZIZ_USER_ME_FS
--------------------------------------------------------------------
----- TO RUN NOT THE FIRST TIME OF EXECUTION 
USE DB_VYB_ODS_TALOS
GO
IF OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS', 'U') IS NOT NULL
DROP TABLE dbo.TB_JAF_AZIZ_USER_ME_FS
DROP SYNONYM SYN_TB_JAF_AZIZ_USER_ME_FS
GO
USE DB_VYB_ODS_TALOS
GO
----- TO RUN EVERYTIME CREATE TABLE STATEMENT
CREATE TABLE TB_JAF_AZIZ_USER_ME_FS (
   USER_ID              	VARCHAR(256)         NOT NULL,
   USER_NM              	VARCHAR(256)         NULL,
   USER_LOGIN_NM        	VARCHAR(256)         NULL,
   USER_EMAIL_NM        	VARCHAR(256)         NULL,
   USER_STATUS_FLAG_NM  	VARCHAR(256)         NULL,
   USER_APPLICATION_ID  	VARCHAR(256)         NULL,
   USER_CREATION_DATE   	SMALLDATETIME        NULL,
   USER_UPDATE_DATE     	SMALLDATETIME        NULL,
   USER_ACTIVATION_FLG_NM 	VARCHAR(256)         NULL,
   USER_PREF_LANGUAGE_NM 	VARCHAR(256)         NULL,
   USER_OWNER_NM        	VARCHAR(256)         NULL,
   USER_SURNAME_NM      	VARCHAR(256)         NULL,
   USER_CITY_ID         	VARCHAR(256)         NULL,
   USER_TERRITORY_ID    	VARCHAR(256)         NULL,
   USER_REGION_ID       	VARCHAR(256)         NULL,
   USER_ADDRESS_DSC     	VARCHAR(256)         NULL,
   USER_MOBILE_PHONE_NUM 	VARCHAR(256)         NULL,
   USER_NEWSPAGE_CODE   	VARCHAR(256)         NULL,
   USER_PRIORITY_CODE   	VARCHAR(256)         NULL,
   USER_ASSOC_CMS_USER_ID 	VARCHAR(256)         NULL,
   CONSTRAINT PK_TB_JAF_AZIZ_USER_ME_FS PRIMARY KEY (USER_ID)
)
GO
IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS' 
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
   - Component Name: TB_JAF_AZIZ_USER_ME_FS
   - Component Description: Table that contains all the Talos users
   ', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_ID'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Unique Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Name',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_LOGIN_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_LOGIN_NM'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Login',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_LOGIN_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_EMAIL_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_EMAIL_NM'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Email',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_EMAIL_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_STATUS_FLAG_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_STATUS_FLAG_NM'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Status Name',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_STATUS_FLAG_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_APPLICATION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_APPLICATION_ID'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Flag Registered From Application',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_APPLICATION_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_CREATION_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_CREATION_DATE'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Date Time Creation',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_CREATION_DATE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_UPDATE_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_UPDATE_DATE'
END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Date Time Update',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_UPDATE_DATE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_ACTIVATION_FLG_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_ACTIVATION_FLG_NM'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Flag Activation',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_ACTIVATION_FLG_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_PREF_LANGUAGE_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_PREF_LANGUAGE_NM'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Prefered Language',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_PREF_LANGUAGE_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_OWNER_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_OWNER_NM'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Owner Name',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_OWNER_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_SURNAME_NM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_SURNAME_NM'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Surname',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_SURNAME_NM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_CITY_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_CITY_ID'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account City Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_CITY_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_TERRITORY_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_TERRITORY_ID'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Territory Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_TERRITORY_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_REGION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_REGION_ID'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Region Identifier',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_REGION_ID'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_ADDRESS_DSC')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_ADDRESS_DSC'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Address',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_ADDRESS_DSC'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_MOBILE_PHONE_NUM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_MOBILE_PHONE_NUM'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Mobile Phone Number',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_MOBILE_PHONE_NUM'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_NEWSPAGE_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_NEWSPAGE_CODE'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Newspage Code',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_NEWSPAGE_CODE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_PRIORITY_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_PRIORITY_CODE'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account Priority ',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_PRIORITY_CODE'
GO
IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TB_JAF_AZIZ_USER_ME_FS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'USER_ASSOC_CMS_USER_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_ASSOC_CMS_USER_ID'

END
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'User Account CMS User',
   'user', @CURRENTUSER, 'table', 'TB_JAF_AZIZ_USER_ME_FS', 'column', 'USER_ASSOC_CMS_USER_ID'
GO
---- CREATION OF THE SYNONYM
CREATE SYNONYM SYN_TB_JAF_AZIZ_USER_ME_FS FOR TB_JAF_AZIZ_USER_ME_FS
GO