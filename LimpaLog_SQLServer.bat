REM Define variáveis
set "Instancia=INSTANCIA\SQLEXPRESS"
set "DatabaseName=NOMEDABASE"
set "UserName=SEU-USERNAME"
set "UserPassword=SUA-SENHA"

sqlcmd.exe -S %Instancia% -U %UserName% -P %UserPassword% -Q "USE [%DatabaseName%]; EXEC dmi_sp_ApagaTemporarias;"
sqlcmd.exe -S %Instancia% -U %UserName% -P %UserPassword% -Q "USE [%DatabaseName%]; ALTER DATABASE %DatabaseName% SET RECOVERY SIMPLE; DBCC SHRINKFILE (N'%LogicalDatabaseName%' , 0, TRUNCATEONLY); ALTER DATABASE %DatabaseName% SET RECOVERY FULL;"

pause