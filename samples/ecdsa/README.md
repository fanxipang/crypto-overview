# ECDSA
An example of using ECDSA using  `python-ecdsa`

## Install
```bash
# create an virtual environment and activate it
python -m venv .venv
. .venv/bin/activate

# install dependencies
pip install -r requirements.txt
```

## Run

```bash
python src/create_key_pairs.py
python src/sign_message.py
python src/verify_signature.py
```
