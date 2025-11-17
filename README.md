# LLVM 12 编译环境 Docker 镜像

本项目提供了一个基于 Ubuntu 20.04 的 Docker 镜像，预装了 clang-12 和 llvm-12，用于编译 C 代码并生成 LLVM IR。

## 环境要求

- Docker 已安装并运行

## 构建 Docker 镜像

在项目根目录下运行：

```bash
docker build -t llvm12-machine .
```

## 使用方法

### 方法一：挂载当前目录到容器中运行

将当前项目目录挂载到容器的 `/workspace` 目录，然后进入容器的 bash 终端：

```bash
docker run -it -v $(pwd):/workspace llvm12-machine
```

在容器内运行编译脚本：

```bash
bash compile.sh
```

编译完成后，会在当前目录生成 `out.ll` 文件。

### 方法二：直接运行编译脚本

也可以直接运行编译脚本，无需进入交互式终端：

```bash
docker run -it -v $(pwd):/workspace llvm12-machine bash compile.sh
```

## 编译流程说明

`compile.sh` 脚本执行以下步骤：

1. 使用 `clang-12` 将 `libsysy.c` 编译为 LLVM IR 文件 `lib.ll`
2. 使用 `clang-12` 将 `main.c` 编译为 LLVM IR 文件 `main.ll`
3. 使用 `llvm-link-12` 将两个 IR 文件链接，生成 `out.ll`
4. 使用 `lli-12` 解释运行生成的 `out.ll` 文件

## 文件说明

- `main.c`: 主程序源代码
- `libsysy.c`: 系统库函数实现
- `libsysy.h`: 系统库函数头文件
- `compile.sh`: 编译脚本
- `Dockerfile`: Docker 镜像构建文件

## 注意事项

- 确保在运行 Docker 命令时，当前目录包含所有必要的源文件
- 生成的 `out.ll` 文件会保存在挂载的目录中，可以直接在宿主机上查看
- 如果需要修改编译选项，可以编辑 `compile.sh` 脚本

