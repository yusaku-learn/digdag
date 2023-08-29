$year = Get-Date -Format "yyyy"
$month = Get-Date -Format "MM"
$day = Get-Date -Format "dd"

$receipt_folderPath = "C:\Users\uchii\Desktop\data\receipt\$year\$month\$day"
$customer_folderPath = "C:\Users\uchii\Desktop\data\customer\$year\$month\$day"
New-Item -Path $receipt_folderPath -ItemType Directory -Force
New-Item -Path $customer_folderPath -ItemType Directory -Force

Write-Host "success create folder!: $receipt_folderPath , $customer_folderPath"




