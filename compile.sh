

# 分别导出 libsysy 和 main.c 对应的的 .ll 文件
clang-12 -emit-llvm -S libsysy.c -o lib.ll
clang-12 -emit-llvm -S main.c -o main.ll

# 使用 llvm-link 将两个文件链接，生成新的 IR 文件
llvm-link-12 main.ll lib.ll -S -o out.ll

# 用 lli 解释运行
lli-12 out.ll

