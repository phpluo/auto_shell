#!/bin/sh

workWiFi="xhhd888_5G_"

# 获取WiFi的ID
ssid=`/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | grep ' SSID:' | awk -FSSID:\  '{print $2}'`

# 判断获取到当前的WiFi是公司WiFi ID 则关闭音量
if [ "$ssid" == "$workWiFi" ]; then
	osascript -e 'set volume output volume 1' #设置音量为1
    osascript -e 'set volume output muted 1' #设置为静音
# else
# 	osascript -e 'set volume output volume 30' #设置音量为30
# 	osascript -e "set volume output muted 0" # 关闭静音
fi
