FROM python:3.6.6-alpine3.8
COPY prepare.sh /usr/local/bin
RUN set -ex \
	&& apk add g++ libssl-dev libbz2-dev libjpeg-turbo libjpeg-turbo-dev libpng libpng-dev \
	&& pip install requests==2.18.4 \
	&& pip install flask==1.0.2 \
	&& pip install flask_cors==3.0.6 \
	&& pip install pymysql==0.8.1 \
	&& pip install pyyaml==3.13 \
	&& pip install xlrd==1.1.0 \
	&& pip install xlwt==1.3.0 \
	&& pip install schedule==0.5.0 \
	&& pip install JPype1==0.6.3 \
	&& pip install numpy==1.15.4 \
	&& pip install Flask-Login==0.5.0 \
	&& pip install pycryptodome==3.9.8 \
	&& pip install PyCrypto \
	&& pip install Pillow==7.2.0 \
	&& apk --no-cache add tzdata \
	&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& echo "Asia/Shanghai" > /etc/timezone \
	&& chmod 777 /usr/local/bin/prepare.sh \
	&& prepare.sh
