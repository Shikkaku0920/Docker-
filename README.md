# Docker-
Docker打包鸿蒙程序



*创建项目目录 hongmeng>dockerfile/**创建镜像*

*环境配置（dockerfile**）*

*FROM ubuntu:18.04*

*#* *安装基础工具*

*RUN apt-get update && apt-get install -y \*

  *curl \*

  *unzip \*

  *python3.8 \*

  *python3-pip \*

  *dosfstools \*

  *scons \*

  *mtools \*

  *zip*

 

*#* *安装鸿蒙编译工具链*

*RUN mkdir -p /opt/tools*

*WORKDIR /opt/tools*

 

*#* *下载并解压gn**、ninja**、llvm**等工具*

*RUN curl -O https://repo.huaweicloud.com/harmonyos/compiler/gn/1523/linux/gn.1523.tar && \*

  *tar -xf gn.1523.tar && rm -f gn.1523.tar*

 

*RUN curl -O https://repo.huaweicloud.com/harmonyos/compiler/ninja/1.9.0/linux/ninja.1.9.0.tar && \*

  *tar -xf ninja.1.9.0.tar && rm -f ninja.1.9.0.tar*

 

*RUN curl -O https://repo.huaweicloud.com/harmonyos/compiler/clang/9.0.0-34042/linux/llvm-linux-9.0.0-34042.tar && \*

  *tar -xf llvm-linux-9.0.0-34042.tar && rm -f llvm-linux-9.0.0-34042.tar*

 

*#* *设置环境变量*

*ENV PATH=/opt/tools/gn:/opt/tools/ninja:/opt/tools/llvm/bin:$PATH*

###  

### 构建与运行

*docker build -t myhaemony:1* 创建名为myHeamony:1容器镜像

 

*xhost +local:docker* 允许容器访问服务器

 

*mkdir -p data && docker run -it -v $PWD/data:/data haemony:1 bash* *进入容器并构建项目*

*cd /data* *切换至data**目录下*

*mkdir code-hi3516 && cd code-hi3516* *创建项目目并进入该项目目录*

*curl -O https://repo.huaweicloud.com/harmonyos/os/1.0/code-1.0.tar.gz* *从官网下载镜像包*

*tar -zxvf code-1.0.tar.gz* *解压包*

*python build.py ipcamera_hi3516dv300 -b debug* 运行 `build.py` 脚本 *建立名为 ipcamera_hi3516dv300**的debug**项目*

构建完成后，你可以将生成的可执行文件或应用包部署到目标设备上运行