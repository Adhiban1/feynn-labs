echo "Git Cloning..."
git clone --depth 1 https://github.com/Adhiban1/feynn-labs.git

echo ""
echo "cd feynn-labs/project1..."
cd feynn-labs/project1

echo ""
echo "Creating python virtual environment..."
python3 -m venv .venv

echo ""
echo "Activating virtual environment..."
source .venv/bin/activate

echo ""
echo "Upgrading pip..."
pip install --upgrade pip

echo ""
echo "Installing requirements..."
pip install -r requirements.txt

echo ""
echo "Traing the model..."
python3 train.py

echo ""
echo "Testing the model..."
python3 test.py

echo ""
echo "Opening Flask App..."
python3 app.py