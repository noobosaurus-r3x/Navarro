FROM python:3.11-slim

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "python3", "navarro.py" ]