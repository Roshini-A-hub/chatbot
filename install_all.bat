@echo off
echo Setting up backend environment...

cd chatbot-backend
python -m venv venv
call venv\Scripts\activate
pip install -r requirements.txt

echo Setting up frontend environment...

cd ..\chatbot-frontend
npm install

echo Installation successful!
pause
