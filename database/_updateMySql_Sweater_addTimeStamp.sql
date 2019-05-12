/*************************************************************************
 **                                                                     **
 **    File:    _updateMySql_Sweater_addTimeStamp.sql                   **
 **    Version: No version                                              **
 **    Purpose: 1) Alter Tables	message 	                         **
 ** 			                                                        **
 **    Released: May 12, 2019  		                                 **
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

ALTER TABLE message ADD COLUMN version int NOT NULL;
ALTER TABLE message ADD COLUMN whenmodified timestamp default current_timestamp NOT NULL;
