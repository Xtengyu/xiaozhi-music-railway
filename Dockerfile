# 使用官方 Node.js 18 镜像

FROM node:18-alpine

# 设置工作目录

WORKDIR /app

# 复制 package.json 和 package-lock.json

COPY package\*.json ./

# 安装依赖 (只有 ws 一个依赖)

RUN npm install

# 复制项目所有代码

COPY . .

# 暴露 8765 端口 (你代码里的默认端口)

EXPOSE 8765

# 启动命令

CMD ["node", "server.js"]
