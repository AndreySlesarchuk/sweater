/*************************************************************************
 **                                                                     **
 **    File:    _updateMySql_Sweater_convertToCharacterSetUtf8.sql      **
 **    Version: No version                                              **
 **    Purpose: 1) Alter DataBase:                                      **
 **              CHARACTER SET utf8 COLLATE utf8_general_ci             **
 **             2) Alter Tables				                            **
 ** 			 CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci  **	             								
 **    Released: May 11, 2019  		                                    **
 **    Authors:  Andrey Slesarchuk                                      **
 **                                                                     **
 **    Usage:    This script must be executed through the super user    **
 **              of MySql DB                                            **
 **                                                                     **
 **    Note:     1) MySql Data Base version should be 5.7               **
 **                                                                     **
 *************************************************************************/

USE sweater;
SET sql_mode = '';

ALTER DATABASE sweater CHARACTER SET utf8 COLLATE utf8_general_ci; 
ALTER TABLE `sweater`.`usr` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `sweater`.`user_role` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `sweater`.`message` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
