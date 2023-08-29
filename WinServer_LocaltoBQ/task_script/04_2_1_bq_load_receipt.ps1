$year = Get-Date -Format "yyyy"
$month = Get-Date -Format "MM"
$day = Get-Date -Format "dd"

bq load --source_format=CSV --skip_leading_rows=1 100_knock.receipt gs://test_bucket_yusaku/receipt/$year/$month/$day/${today}_receipt.csv

