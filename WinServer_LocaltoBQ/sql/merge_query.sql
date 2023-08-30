MERGE INTO `100_knock.customer` AS T
USING `100_knock.temp_customer` AS S
ON T.customer_id = S.customer_id
WHEN MATCHED THEN
  UPDATE SET T.customer_id = S.customer_id, T.customer_name = S.customer_name, T.gender_cd = S.gender_cd, 
  T.gender = S.gender , T.birth_day = S.birth_day,T.age = S.age,T.postal_cd = S.postal_cd,T.address = S.address,
  T.application_store_cd = S.application_store_cd , T.application_date = S.application_date,
  T.status_cd = S.status_cd
WHEN NOT MATCHED THEN
  INSERT (customer_id, customer_name, gender_cd,gender,birth_day,age,postal_cd,address,application_store_cd,application_date,status_cd) VALUES (customer_id, customer_name, gender_cd,gender,birth_day,age,postal_cd,address,application_store_cd,application_date,status_cd);