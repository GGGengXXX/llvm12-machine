# 使用 Ubuntu 20.04 作为基础镜像
FROM ubuntu:22.04

# 设置环境变量，避免交互式安装时的提示
ENV DEBIAN_FRONTEND=noninteractive

# 更新包列表并安装必要的依赖
RUN apt-get update && apt-get install -y  --fix-missing \
    wget \
    gnupg \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# 添加 LLVM 12 的官方 apt 源
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-12 main" >> /etc/apt/sources.list.d/llvm.list

# 更新包列表并安装 clang-12 和 llvm-12
RUN apt-get update && apt-get install -y \
    clang-12 \
    llvm-12 \
    && rm -rf /var/lib/apt/lists/*

# 创建符号链接，使命令可以直接使用（可选，因为脚本中已经使用了 clang-12 和 llvm-link-12）
# RUN ln -s /usr/bin/clang-12 /usr/bin/clang && \
#     ln -s /usr/bin/llvm-link-12 /usr/bin/llvm-link && \
#     ln -s /usr/bin/lli-12 /usr/bin/lli

# 设置工作目录
WORKDIR /workspace

# 默认命令为 bash
CMD ["/bin/bash"]

