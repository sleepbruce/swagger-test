FROM python:3.6.6-alpine3.7
RUN set -ex \
	&& pip install requests \
	&& pip install flask \
	&& pip install flask_cors \
	&& pip install pymysql \
	&& pip install pyyaml \
	&& pip install flask_cors \
