$year = Get-Date -Format "yyyy"
$month = Get-Date -Format "MM"
$day = Get-Date -Format "dd"

bq load --source_format=CSV --skip_leading_rows=1 100_knock.temp_customer gs://test_bucket_yusaku/customer/$year/$month/$day/${today}_customer.csv

