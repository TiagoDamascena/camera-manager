FROM python:3.9

RUN pip install gphoto2 --user --only-binary :all:

WORKDIR /app
COPY . .

CMD ["python", "src/main.py"]