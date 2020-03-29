ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

# 设置清华镜像、安装hanlp
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
	pip install hanlp