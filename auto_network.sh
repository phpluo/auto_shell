#!/bin/sh
#已有的位置信息
location_list=`networksetup -listlocations`;

Location_Automatic="Automatic"
Location_Office="office"

# 工作的WIFi
workWiFi="xhhd888_5G_"
# empty location var 存放应该修改为的位置
LOCATION=

# 获取WiFi的ID
ssid=`/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | grep ' SSID:' | awk -FSSID:\  '{print $2}'`
# 当前的网络位置
current_location=`networksetup -getcurrentlocation`
# 判断获取到当前的WiFi是公司WiFi ID 则关闭音量
if [ "$ssid" = "$workWiFi" ]; then
	LOCATION=$Location_Office;
else
	LOCATION=$Location_Automatic;
fi
# 如果当前网络位置和需要修改的一样则 什么都不需要做
if [[ "$current_location" = "$LOCATION" ]]; then
	echo '无需操作'
    exit
fi
# 修改网络位置
if ! networksetup -switchtolocation "$LOCATION"; then
	osascript -e "display notification \"网络位置修改失败: $LOCATION\" with title \"网络位置修改失败\""
else
	osascript -e "display notification \"网络位置修改为: $LOCATION\" with title \"网络位置修改成功\""
fi
