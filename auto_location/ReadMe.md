# 根据 WIFI 自动修改网络位置

## 使用方式一 LaunchAgents 修改好代码里的路径 WIFI 名称 网络位置信息

    1.cp com.demo.wifi-location.plist ~/Library/LaunchAgents/com.demo.wifi-location.plist
    2.launchctl load ~/Library/LaunchAgents/com.demo.wifi-location.plist

## 使用方式 2 使用 Alfred 工作流

    1.直接双击导入wifi_location.alfredworkflow
    2.在脚本里修改WIFI名称 网络位置信息等
