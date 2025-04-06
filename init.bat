@echo off
set /p PROJECTNAME=Enter your Django project name: 
python -m venv venv
call venv\Scripts\activate
python -m pip install --upgrade pip
pip install django gunicorn
django-admin startproject %PROJECTNAME%
cd %PROJECTNAME%
echo Done! Your Django project '%PROJECTNAME%' is ready and inside its own venv.
pause
