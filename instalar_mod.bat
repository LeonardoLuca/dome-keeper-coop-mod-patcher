@echo off
chcp 65001 > nul
echo ==============================================
echo   Dome Keeper Mod Patcher - Cooperativo Coop
echo ==============================================
echo.

if not exist "domekeeper.pck" (
    echo [ERRO] Este patcher deve ser colocado na pasta de instalacao do Dome Keeper!
    echo Copie todos os arquivos desta pasta para onde o jogo está instalado na Steam.
    echo.
    pause
    exit /b
)

echo 1. Criando backup do arquivo original (domekeeper.pck.bak)...
copy /y "domekeeper.pck" "domekeeper.pck.bak"

echo 1.5. Criando backup de segurança dos saves do jogo...
if exist "%APPDATA%\Godot\app_userdata\Dome Keeper" (
    xcopy /s /e /i /y "%APPDATA%\Godot\app_userdata\Dome Keeper" "%APPDATA%\Godot\app_userdata\Dome Keeper_BackupMod" > nul
)


echo 2. Aplicando patch no Mod Loader...
gdre_tools.exe --headless --pck-patch="domekeeper.pck" --output="domekeeper_patched.pck" --patch-file="mod_loader.gdc=res://addons/mod_loader/mod_loader.gdc"

if not exist "domekeeper_patched.pck" (
    echo.
    echo [ERRO] Ocorreu um erro ao aplicar o patch! Verifique se o jogo está fechado.
    echo.
    pause
    exit /b
)

echo 3. Substituindo arquivo do jogo...
move /y "domekeeper_patched.pck" "domekeeper.pck"

echo 4. Instalando o Mod de Upgrades Compartilhados...
if not exist "mods" mkdir "mods"
copy /y "SharedCoopUpgrades.zip" "mods\SharedCoopUpgrades.zip"

echo.
echo ==============================================
echo   MOD INSTALADO COM SUCESSO!
echo   Agora você pode abrir o jogo e jogar coop online!
echo ==============================================
echo.
pause
