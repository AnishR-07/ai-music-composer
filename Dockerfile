From ubuntu:latest

WORKDIR /app

RUN apt-get update && apt-get install \
rm -rf --cache

COPY . .

RUN pip install -r requirements.txt

CMD ["Streamlit", "run", "app.py"]