#!/bin/bash

# LLVM 12 编译环境 - 交互式容器运行脚本

IMAGE_NAME="llvm12-machine"
CONTAINER_NAME="llvm12-container"

echo "🔍 检查 Docker 镜像是否存在..."

# 检查镜像是否存在
if ! docker images | grep -q "$IMAGE_NAME"; then
    echo "📦 镜像不存在，开始构建..."
    docker build -t $IMAGE_NAME .
    
    if [ $? -ne 0 ]; then
        echo "❌ 镜像构建失败！"
        exit 1
    fi
    
    echo "✅ 镜像构建成功！"
else
    echo "✅ 镜像已存在"
fi

echo ""
echo "🚀 启动交互式容器..."
echo "💡 提示："
echo "   - 当前目录已挂载到容器的 /workspace"
echo "   - 输入 'bash compile.sh' 运行编译脚本"
echo "   - 输入 'exit' 退出容器"
echo ""

# 运行交互式容器
docker run -it --rm \
    --name $CONTAINER_NAME \
    -v "$(pwd):/workspace" \
    $IMAGE_NAME

