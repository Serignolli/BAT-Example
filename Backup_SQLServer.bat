REM Para "zipar" os arquivos, aqui usaremos o 7zip, portanto é necessário que ele esteja instalado
REM Define 7-Zip
set "seteZip=C:\Program Files\7-Zip\7z.exe"

REM Define variáveis
set "Instancia=INSTANCIA\SQLEXPRESS"
set "DatabaseName=NOMEDABASE"
set "UserName=SEU-USERNAME"
set "UserPassword=SUA-SENHA"
set "BackupPath=CAMINHO DO BACKUP"

sqlcmd.exe -S %Instancia% -U %UserName% -P %UserPassword% -Q "BACKUP DATABASE %DatabaseName% TO DISK='%BackupPath%\%DatabaseName%.bak' WITH FORMAT"
"%seteZip%" u %BackupPath%\%DatabaseName%_Atualizacao_%date:~0,2%-%date:~3,2%-%date:~6,10%-%time:~0,2%-%time:~3,2%.7z %BackupPath%\%DatabaseName%.bak