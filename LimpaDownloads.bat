@echo off

REM Definição da variável de caminho (No caso da pasta downloads)
set Origem=%USERPROFILE%\Downloads

REM Lista de extensões de arquivos a serem removidos
set "extensoes=png jpeg jpg webp gif mp4"

REM Loop para remover arquivos com as extensões especificadas
for %%e in (%extensoes%) do (
    if exist "%Origem%\*.%%e" (
        del "%Origem%\*.%%e"
        echo Arquivos %%e removidos
    ) else (
        echo Não existem arquivos de .%%e
    )
)