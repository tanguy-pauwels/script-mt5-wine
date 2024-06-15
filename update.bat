@echo off

SET REQUIREMENTS=requirements.txt

REM Activer l'environnement virtuel
echo Activation de l'environnement virtuel...
CALL %VENV_DIR%\Scripts\activate

REM Vérifier si requirements.txt existe
IF EXIST %REQUIREMENTS% (
    echo Installation des dépendances depuis %REQUIREMENTS%...
    pip install -r %REQUIREMENTS%
) ELSE (
    echo Le fichier %REQUIREMENTS% n'existe pas. Assurez-vous de l'avoir créé.
    EXIT /B 1
)

echo UPDATE FINISHED.
