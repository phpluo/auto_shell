# auto_shell
The speaker automatically goes silent at work（company）
macbook 到公司自动禁音
自动根据WIFi切换网络位置

### 添加计划任务
`crontab -e `
### 自动禁音的计划任务
`*/1 * * * * sh xxxx/close_volume.sh`  
xxxx 换成自己的路径
### 自动切换网络计划任务 早上8点9点的每一分钟 下午18,19点的每一分钟
`* 8,9,18,19 * * * sh xxxx/auto_network.sh`
