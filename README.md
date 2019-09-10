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

Install the Chatito dependencies:

```
npm install
```

## Training

To train the model, simply run:

```
make train
```

## Evaluating

To evaluate the model, simply run:

```
make evaluate
```

## Cleaning temporary files

To remove temporary created files and start from scratch, run:

```
make clean
```