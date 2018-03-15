FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=6000
EXPOSE 6000
CMD [ "python", "./app.py" ]
