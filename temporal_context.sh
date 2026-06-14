#!/bin/bash
# 时间差系统 — temporal_context v1.2
# 用法: bash temporal_context.sh
# 输出: 🕐 北京时间 YYYY-MM-DD HH:MM CST | 用户活跃度:[等级]
#
# 活跃度时钟分6档，数据来源：打字行为指纹实测（709条消息统计）
# 可替换为用户自己的统计数据
#
# v1.2 新增：日期标签（跨天锚点，纯标签不参与活跃度计算）

D=$(date +%Y-%m-%d)
H=$(date +%H)
M=$(date +%M)

# 用户行为时钟 — 默认值（请替换为自己的数据）
#   06-12:低  12-16:中低  16-18:峰值  18-22:中高  22-02:中  02-06:极低
if [ "$H" -ge 16 ] && [ "$H" -lt 18 ]; then
    LVL="峰值"
elif [ "$H" -ge 2 ] && [ "$H" -lt 6 ]; then
    LVL="极低"
elif [ "$H" -ge 6 ] && [ "$H" -lt 12 ]; then
    LVL="低"
elif [ "$H" -ge 12 ] && [ "$H" -lt 16 ]; then
    LVL="中低"
elif [ "$H" -ge 18 ] && [ "$H" -lt 22 ]; then
    LVL="中高"
else
    LVL="中"
fi

echo "🕐 北京时间 $D $H:$M CST | 用户活跃度:$LVL"
