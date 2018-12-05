beeline -u "jdbc:hive2://${HS2_HOSTNAME}:10000/default;ssl=true;principal=hive/_HOST@${AD_DOMAIN}" \
  -hivevar database_name=${DB_NAME} \
  -hivevar table_name=${TABLE_NAME} \
  -f hive_unpartitioned_compaction.sql
