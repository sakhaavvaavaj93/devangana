FROM python:3.9.1-buster

WORKDIR /root/devangana

COPY . .
RUN pip install --upgrade pip
RUN STATIC_DEPS=true pip install lxml
RUN python -m pip install --upgrade pip setuptools wheel
RUN pip install --upgrade lxml
RUN pip3 install -U -r requirements.txt

# Starting Worker
CMD ["python3","-m","devangana"]
