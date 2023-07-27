@echo off

cls
echo "Git Cloning..."
git clone https://github.com/Adhiban1/feynn-labs.git

echo.
echo "cd feynn-labs/project1..."
cd feynn-labs\project1

echo.
echo "Creating python virtual environment..."
python -m venv .venv

echo.
echo "Activating virtual environment..."
call .venv\Scripts\activate

echo.
echo "Upgrading pip..."
pip install --upgrade pip

echo.
echo "Installing requirements..."
pip install -r requirements.txt

echo.
echo "Training the model..."
python train.py

echo.
echo "Testing the model..."
python test.py

echo.
echo "Opening Flask App..."
python app.py

echo.
echo "Deactivating virtual environment..."
deactivate