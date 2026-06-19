#!/bin/bash
# SPDX-License-Identifier: MIT
# time-awareness — temporal_context v2.0
# 输出：🕐 北京时间 YYYY-MM-DD HH:MM CST
# 活跃度已移至记忆系统，不由脚本硬编码
# 依赖：系统时区 TZ=Asia/Shanghai

echo "🕐 北京时间 $(date '+%Y-%m-%d %H:%M') CST"
