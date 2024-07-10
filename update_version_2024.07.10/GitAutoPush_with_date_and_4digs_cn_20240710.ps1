# 无限循环  
while ($true) {  
    # 切换到脚本所在的目录（如果需要）  
    # cd $PSScriptRoot  
  
    # 添加当前目录下所有更改的文件到暂存区  
    git add --all .  
  
    # 获取当前日期和时间  
    $now = Get-Date  
    $year = $now.Year  
    $month = $now.Month.ToString("D2")  
    $day = $now.Day.ToString("D2")  
  
    # 生成一个4位随机数  
    $num = (Get-Random -Minimum 1000 -Maximum 9999)  
  
    # 提交更改，消息格式为 "auto push 年月日_随机数"  
    git commit -m "auto push $year$month$day_$num"  
  
    # 推送更改到GitHub  
    git push  
  
    # 通知用户脚本完成并重新启动  
    Write-Host "Complete. Relaunching..."  
  
    # 等待900秒（15分钟）  
    Start-Sleep -Seconds 900  
}
