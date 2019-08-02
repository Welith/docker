# Use an official python library
FROM python:2.7-slim

#set the working dir
WORKDIR /app

#Copy the content into the working dir
COPY . /app

#install any packages needed
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#Make port 80 available
EXPOSE 80

#Define a environment variable
ENV NAME World

#Run app.py
CMD ["python", "app.py"]

# Set proxy server, replace host:port with values for your servers
ENV http_proxy host:port
ENV https_proxy host:port