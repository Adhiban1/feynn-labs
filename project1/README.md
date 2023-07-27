# Machine Predictive Maintenance

[Dataset Kaggle link](https://www.kaggle.com/datasets/shivamb/machine-predictive-maintenance-classification)

## Download Repository

```
git clone https://github.com/Adhiban1/feynn-labs.git
```

## Change directory

```
cd feynn-labs/project1
```

## Create virtual environment

```
python -m venv .venv
```

## Activate virtual environment

For windows
```
.venv/Scripts/activate 
```

For linux
```
source .venv/bin/activate
```

## Install requirements

```
pip install -r requirements.txt
```

## Train

Run `train.py` this will train the model and save the models into `models` folder

```
python train.py
```

## Test

Run `test.py` to verify saved models work well

```
python.test.py
```

## App

Run `app.py` to open Web app

```
python app.py
```

## Run all

You can run above commands one by one or you can use `run_all.sh` for linux or `run_all.bat` for windows. You should modify the code in run_all.sh or run_all.bat file for your cases. And then run this one file this will download repository, change directory, creating virtual environment, activating virtual environment, upgrading pip, installing requirements, training the model, testing the model, opening Flask App.

> One you run `run_all` file, then don't run again to open flask app again. Just run `python app.py`.

![Screenshot1.jpg](Screenshot1.jpg)