ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

# 设置清华镜像
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
	# 安装hanlp。会安装TF2，设置不缓存，避免内存错误
	pip --no-cache-dir install hanlp && \
	# 主体模型
	pip install --upgrade gensim && \
	# 北大中文
	pip install pkuseg && \
	# 清华中文
	pip install thulac
	