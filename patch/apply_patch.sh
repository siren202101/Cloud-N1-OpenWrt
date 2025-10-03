#!/bin/bash

# 脚本功能：检查 xt_RTPENGINE.c 是否需要补丁，并应用补丁
# 使用场景：ImmortalWrt 源码构建，修复 ip_route_output 调用问题

set -e

# 补丁文件路径
PATCH_FILE="../patch/rtpengine_patch.patch"

# 查找 xt_RTPENGINE.c 文件（支持动态构建目录）
find_rtpengine_file() {
    local rtpengine_dir
    rtpengine_dir=$(find build_dir -type d -name "rtpengine-*" 2>/dev/null | head -n 1)
    if [ -z "$rtpengine_dir" ]; then
        echo "错误：未找到 RTPengine 构建目录"
        exit 1
    fi
    RTPENGINE_FILE="$rtpengine_dir/kernel-module/xt_RTPENGINE.c"
    if [ ! -f "$RTPENGINE_FILE" ]; then
        echo "错误：未找到 xt_RTPENGINE.c 文件（预期路径：$RTPENGINE_FILE）"
        exit 1
    fi
    echo "找到 xt_RTPENGINE.c 文件：$RTPENGINE_FILE"
}

# 检查是否需要补丁
check_patch_needed() {
    local target_line="ip_route_output(net, dst->u.ipv4, src->u.ipv4, tos, 0)"
    if grep -q "$target_line" "$RTPENGINE_FILE"; then
        echo "检测到需要补丁：文件中包含 $target_line"
        return 0
    else
        echo "无需补丁：文件中不包含 $target_line，可能已修复或代码不同"
        return 1
    fi
}

# 应用补丁
apply_patch() {
    if [ ! -f "$PATCH_FILE" ]; then
        echo "错误：补丁文件 $PATCH_FILE 不存在"
        exit 1
    fi
    echo "应用补丁：$PATCH_FILE"
    if patch -p1 -d "$(dirname "$RTPENGINE_FILE")/.." < "$PATCH_FILE"; then
        echo "补丁应用成功"
    else
        echo "错误：补丁应用失败，请检查补丁文件或 xt_RTPENGINE.c 内容"
        exit 1
    fi
}

# 主逻辑
main() {
    echo "开始检查和应用 RTPengine 补丁..."
    cd openwrt || { echo "错误：无法进入 openwrt 目录"; exit 1; }
    
    find_rtpengine_file
    
    if check_patch_needed; then
        apply_patch
    else
        echo "跳过补丁应用"
    fi
    
    echo "检查和补丁过程完成"
}

main
