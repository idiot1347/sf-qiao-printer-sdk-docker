# 丰桥电子运单自助打印SDK Docker 镜像

## 顺丰 SDK 版本

`1.1.0`

## JDK 版本

`openjdk:8`

## 使用

```shell

1. 根据 https://docs.docker.com/install/ 指南安卓 docker

2. git clone https://github.com/idiot1347/sf-qiao-printer-sdk-docker.git  && cd sf-qiao-printer-sdk-docker

3. sudo docker build ./ -t sfprinter

4. sudo docker run -d -p 4040:4040 sfprinter

```
