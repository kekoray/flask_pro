FROM python:3.8

COPY . /code
WORKDIR /code

# RUN是在docker镜像构建中运行的命令，CMD是在docker容器启动后运行的命令；
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
echo 'Asia/Shanghai' >/etc/timezone && \
pip3 install pipenv -i https://pypi.douban.com/simple/ && \
pipenv install -i https://pypi.douban.com/simple/

# python3 -m pip install --upgrade pip && \
# 端口号暴露
EXPOSE 5000

# 执行简单程序可这样写，web服务就使用uwsgi
# CMD ["pipenv","run","python3","run_server.py"]
CMD ["uwsgi","uwsgi.dev.ini"]



# docker build -t koray/flask:1.0 .
# docker images
# docker run -it --name flask2 -p 5000:5000  koray/flask:1.3