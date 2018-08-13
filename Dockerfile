FROM python:3.6.6-alpine3.7
RUN set -ex \
	&& pip install requests==2.18.4 \
	&& pip install flask==1.0.2 \
	&& pip install flask_cors==3.0.6 \
	&& pip install pymysql==0.8.1 \
	&& pip install pyyaml==3.13 
