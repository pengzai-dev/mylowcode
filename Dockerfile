# 使用官方 Node.js 作为基础镜像
FROM node:14

# 设置工作目录
WORKDIR /usr/src/app

# 将 package.json 和 package-lock.json 复制到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 将本地代码复制到工作目录
COPY . .

# 应用绑定的端口
EXPOSE 3000

# 运行应用
CMD ["npm" "start"]
