@echo off
set /p PROJECTNAME=Enter your Django project name: 
set /p APPNAME=Enter your Django app name: 

python -m venv venv
call venv\Scripts\activate

python -m pip install --upgrade pip
pip install django gunicorn

django-admin startproject %PROJECTNAME%
cd %PROJECTNAME%
python manage.py startapp %APPNAME%

echo.
echo Done! Your Django project '%PROJECTNAME%' with app '%APPNAME%' is ready and inside its own venv.
pause
