#!/bin/bash

# 假设补丁文件在当前目录
PATCH_FILE="rtpengine_patch.diff"
TARGET_DIR="build_dir/target-aarch64_generic_musl/rtpengine-no-transcode/rtpengine-mr11.5.1.18/kernel-module"

# 检查补丁文件是否存在
if [[ ! -f "$PATCH_FILE" ]]; then
    echo "补丁文件 $PATCH_FILE 找不到!"
    exit 1
fi

# 切换到目标目录
cd "$TARGET_DIR" || { echo "无法进入目录 $TARGET_DIR"; exit 1; }

# 应用补丁
echo "应用补丁 $PATCH_FILE 到 $TARGET_DIR ..."
patch -p1 < "$PATCH_FILE"

# 检查补丁是否应用成功
if [[ $? -eq 0 ]]; then
    echo "补丁应用成功！"
else
    echo "补丁应用失败！"
    exit 1
fi
