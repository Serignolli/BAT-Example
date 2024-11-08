@echo off

REM Este é o exemplo de uma backup feito em outro disco

REM Configurações dos caminhos de pasta
set "origem=C:\caminho\para\pasta_origem"
set "destino=D:\caminho\para\pasta_destino"

REM Data e hora para registro do log (formato AAAA-MM-DD_HH-MM-SS)
set "data=%date:~6,4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%"
set "logfile=%destino%\backup_log_%data%.txt"

echo Iniciando o backup em %data% >> "%logfile%"
echo -------------------------------------------------- >> "%logfile%"

REM Copia todos os arquivos da origem para o destino, mantendo a estrutura de pastas
xcopy "%origem%\*" "%destino%\" /E /H /C /I >> "%logfile%" 2>&1

if %errorlevel% equ 0 (
    echo Backup concluído com sucesso! >> "%logfile%"
    echo Backup concluído com sucesso!
) else (
    echo Erro durante o backup. Verifique o log para detalhes. >> "%logfile%"
    echo Erro durante o backup. Verifique o log para detalhes.
)

echo -------------------------------------------------- >> "%logfile%"
echo Fim do backup em %data% >> "%logfile%"

pause
