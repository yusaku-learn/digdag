$year = Get-Date -Format "yyyy"
$month = Get-Date -Format "MM"
$day = Get-Date -Format "dd"

$folderPath = "C:\Users\uchii\Desktop\data\receipt\$year\$month\$day"
$lastUpdateTime = (Get-ChildItem $folderPath | Measure-Object LastWriteTime -Maximum).Maximum

while ($true) {
    $currentUpdateTime = (Get-ChildItem $folderPath | Measure-Object LastWriteTime -Maximum).Maximum
    if ($currentUpdateTime -ne $lastUpdateTime) {
        $lastUpdateTime = $currentUpdateTime
        # フォルダ更新があった場合、ここでDigdagコマンドを呼び出す
        exit
    }
    Start-Sleep -Seconds 10  # 10秒ごとにフォルダを監視
}
