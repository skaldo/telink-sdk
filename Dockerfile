FROM ubuntu

RUN apt-get update \
  && apt-get install -y wget git build-essential python3.8 python3-pip \
  && rm -rf /var/lib/apt/lists/*
RUN wget http://shyboy.oss-cn-shenzhen.aliyuncs.com/readonly/tc32_gcc_v2.0.tar.bz2
RUN ls -la /
RUN tar -xvjf tc32_gcc_v2.0.tar.bz2 -C /opt/
ENV PATH=$PATH:/opt/tc32/bin
RUN tc32-elf-gcc -v

RUN git clone https://github.com/Ai-Thinker-Open/Telink_825X_SDK.git
RUN mv Telink_825X_SDK /opt/
