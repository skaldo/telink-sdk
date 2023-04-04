FROM ubuntu

RUN apt-get update \
  && apt-get install -y wget git build-essential python3.8 python3-pip \
  && rm -rf /var/lib/apt/lists/*
  
RUN wget -qO- http://shyboy.oss-cn-shenzhen.aliyuncs.com/readonly/tc32_gcc_v2.0.tar.bz2 | tar xvjf - -C /opt/
ENV PATH=$PATH:/opt/tc32/bin
RUN tc32-elf-gcc -v

RUN git clone --depth 1 https://github.com/Ai-Thinker-Open/Telink_825X_SDK.git /opt/Telink_825X_SDK
