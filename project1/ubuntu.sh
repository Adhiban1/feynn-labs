python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python3 src/train.py
python3 src/test.py
python3 src/app.py
