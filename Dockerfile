FROM python:latest
  
ARG PIP_TRUSTED_HOST=mirrors.tencent.com
ARG PIP_INDEX_URL=https://mirrors.tencent.com/pypi/simple

RUN mkdir /app
RUN pip install pywebio
COPY chatroom.py /app/

CMD ["python", "app/chatroom.py"]