## Setup

Configure the Python virtualenv:

```
python3 -m venv env/
```

Activate the virtualenv and install all the dependencies:

```
source env/bin/activate;
pip install -r requirements.txt
```

### Activating the Python virtual environment

whenever you go into the project folder, before you do anything you should activate the project's virtual environment by doing:

```
source env/bin/activate
```

To deactivate the virtual environment, simply type:

```
deactivate
```

## Training

To train the model, simply run:

```
make train
```

## Testing the model with random phrases

If you run the `main.py` file, you can type random phrases to see what the model outputs for them.

```
rasa shell nlu
```

## Evaluating

You can write all the test phrases you want in the `nlu_test.md` file. After you have enough phrases to test, simply run:

```
make evaluate
```

The evaluation command will save the graphs in the `hist.png`, `confmat.png` and `errors.json` (if there's any errors) that you can consult or save if you want.

## Cleaning temporary files

To remove all temporary created files and start from scratch, run:

```
make clean
```

It will remove the `models` folder and all the evaluation files such as `hist.png`, `confmat.png`, `errors.json` and the chatito generated datasets.