FROM python:3.7-alpine

WORKDIR /code
ENV allinone_APP=app.py
ENV allinone_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 35455
COPY . .
CMD ["allinone", "run"]
