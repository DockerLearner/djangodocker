FROM python:2.7
ADD requirements.txt /tmp/requirements.txt
RUN pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com -r /tmp/requirements.txt
RUN mkdir /code
WORKDIR /code
COPY . /code
RUN cp /code/djangodocker/local_settings.docker.py /code/djangodocker/local_settings.py
COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
EXPOSE 8000

CMD /code/docker-entrypoint.sh
