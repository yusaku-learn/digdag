$year = Get-Date -Format "yyyy"
$month = Get-Date -Format "MM"
$day = Get-Date -Format "dd"

$receipt_folderPath = "C:\Users\uchii\Desktop\data\receipt\$year\$month\$day"
$customer_folderPath = "C:\Users\uchii\Desktop\data\customer\$year\$month\$day"

$receipt_filePaths = Get-ChildItem -Path $receipt_folderPath | Where-Object { $_.PSIsContainer -eq $false } | Select-Object -ExpandProperty FullName
$customer_filePaths = Get-ChildItem -Path $customer_folderPath | Where-Object { $_.PSIsContainer -eq $false } | Select-Object -ExpandProperty FullName
# 最新のディレクトリのフルパスを表示
Write-Host "new_directory: $($filePaths)"

gsutil cp $receipt_filePaths gs://test_bucket_yusaku/receipt/$year/$month/$day/${today}_receipt.csv
gsutil cp $customer_filePaths gs://test_bucket_yusaku/customer/$year/$month/$day/${today}_customer.csv





