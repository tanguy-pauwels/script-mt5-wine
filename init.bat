@echo off
SET VENV_DIR=venv
SET REQUIREMENTS=requirements.txt
SET APP=app.py

REM Vérifier si le répertoire venv existe
IF NOT EXIST %VENV_DIR% (
    echo Création de l'environnement virtuel...
    python -m venv %VENV_DIR%
)

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

REM Lancer app.py
IF EXIST %APP% (
    echo Lancement de %APP%...
    python %APP%
) ELSE (
    echo Le fichier %APP% n'existe pas. Assurez-vous de l'avoir créé.
    EXIT /B 1
)
