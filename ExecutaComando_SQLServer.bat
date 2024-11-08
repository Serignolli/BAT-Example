@echo off

REM Define variáveis utilizadas no comando
set "Instancia=SUA\INSTANCIA"
set "DatabaseName=NOME-DA-BASE"
set "UserName=SEU-USERNAME"
set "UserPassword=SUA-SENHA"
set "Comando=UPDATE tabela set campo = 'valor' where campoCondicinal = 'valorCondicional'"

sqlcmd.exe -S %Instancia% -U %UserName% -P %UserPassword% -Q "USE [%DatabaseName%]; %Comando%;"

pause