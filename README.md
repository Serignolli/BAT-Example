# 📜 Guia de Comandos para Arquivos BAT

Arquivos `.bat` (ou arquivos de script batch) são usados no Windows para automatizar tarefas repetitivas, realizar manutenção de sistema e processos de automação. Eles permitem a execução de uma sequência de comandos em um terminal.

Abaixo estão os principais comandos que podem ser utilizados e exemplos de como usá-los.

---

## 📝 Índice

- [@echo off](#echo-off)
- [echo](#echo)
- [pause](#pause)
- [rem](#rem)
- [cls](#cls)
- [start](#start)
- [call](#call)
- [if](#if)
- [goto](#goto)
- [set](#set)
- [for](#for)
- [exit](#exit)
- [Comandos de Diretório](#comandos-de-diretório)

---

### @echo off
Desativa a exibição dos comandos no terminal, mantendo apenas as mensagens especificadas no script.
```bat
@echo off
```

### echo
Exibe mensagens para o usuário. Também pode ser usado para criar linhas em branco com "echo."
```bat
echo Olá, bem-vindo ao script!
echo. 
```

### pause
Interrompe a execução do script e aguarda que o usuário pressione uma tecla para continuar.
```bat
pause
```

### rem
Adiciona comentários ao código. Estes não são executados e servem apenas para documentar o script.
```bat
rem
```

### cls
Limpa o terminal, removendo todas as mensagens exibidas anteriormente.
```bat
cls
```

### start
Abre um programa, arquivo ou URL.
```bat
start notepad.exe
start https://www.google.com
```

### call
Executa outro arquivo de script .bat e retorna ao script principal após sua execução.
```bat
call outro-script.bat
```

### if
Executa verificações condicionais, úteis para controle de fluxo.
```bat
if EXIST arquivo.txt (
    echo O arquivo existe
) else (
    echo O arquivo não existe
)
```

### goto
Redireciona o fluxo do script para um rótulo específico. Rótulos são definidos com :label.
```bat
goto inicio

:inicio
echo Início do script
```

### set
Define ou exibe variáveis de ambiente, úteis para armazenar informações temporárias.
```bat
set nome=Gabriel
echo O nome é %nome%

set /p idade=Digite sua idade:
echo Sua idade é %idade%
```

### for
Usado para loops, permitindo repetir uma ação várias vezes.
```bat
for %%i in (1 2 3) do (
    echo Número: %%i
)
```

### exit
Encerra o script ou a sessão do terminal.
```bat
exit
```

### Comandos de Diretório

## cd
Navega entre diretórios.
```bat
cd C:\Users\SeuUsuario\Documentos
cd ..
```

## mkdir
Cria um novo diretório.
```bat
mkdir novaPasta
```

## rmdir
Remove um diretório. O uso do parâmetro /s remove o diretório e seu conteúdo.
```bat
rmdir nomePasta /s
```

## del
Deleta arquivos. Para excluir todos os arquivos em uma pasta, utilize *.*.
```bat
del arquivo.txt
del *.* /q  ; /q desativa as confirmações
```

## copy
Copia arquivos de um local para outro.
```bat
copy C:\origem\arquivo.txt C:\destino
```

## move
Move arquivos de um local para outro.
```bat
move C:\origem\arquivo.txt C:\destino
```
