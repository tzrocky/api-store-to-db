FROM python:3
ADD __main__.py /
#RUN apk add --no-cache gcc musl-dev linux-headers
#RUN apt-get install -y python python-setuptools python-pip
#COPY requirements.txt requirements.txt
#RUN pip install -r requirements.txt
RUN pip install pymongo
RUN pip install requests
RUN pip install argparse
#RUN pip install _version
COPY . .
CMD [ "python", "./__main__.py" ]
#docker build -t api-bracelet .
#docker run api-bracelet
