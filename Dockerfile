FROM ubuntu:latest

WORKDIR /app

RUN apt-get update && rm -rf ./*

COPY . .

RUN pip install -r requirements.txt

CMD ["Streamlit", "run", "app.py"]