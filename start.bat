@echo off

SET APP=app.py

REM Lancer app.py
IF EXIST %APP% (
    echo Lancement de %APP%...
    python %APP%
) ELSE (
    echo Le fichier %APP% n'existe pas. Assurez-vous de l'avoir créé.
    EXIT /B 1
)