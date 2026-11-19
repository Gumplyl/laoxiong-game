# 轻量nginx镜像
FROM nginx:alpine

# 删除默认nginx页面
RUN rm -rf /usr/share/nginx/html/*

# 把当前目录所有文件复制到nginx静态目录
COPY . /usr/share/nginx/html/

# 暴露80端口
EXPOSE 80

# 启动nginx
CMD ["nginx", "-g", "daemon off;"]
