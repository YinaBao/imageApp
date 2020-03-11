FROM python:3.6
COPY . .
RUN pip install --upgrade pip && pip install flask && pip install -e . \
&& export FLASK_APP=flaskr \
&& export FLASK_ENV=development 
EXPOSE 5000
ENTRYPOINT ["/bin/sh", "startServer.sh"]



