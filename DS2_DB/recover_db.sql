alter database [DS2] set emergency
go
alter database [DS2] set single_user
go 
dbcc checkdb ([DS2], repair_allow_data_loss) with all_errormsgs
go
alter database [DS2] set multi_user
go