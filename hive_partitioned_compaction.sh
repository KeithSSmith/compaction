beeline -u "jdbc:hive2://${HS2_HOSTNAME}:10000/default;ssl=true;principal=hive/_HOST@${AD_DOMAIN}" \
  -hivevar database_name=${DB_NAME} \
  -hivevar table_name=${TABLE_NAME} \
  -hivevar partition_name=${PARTITION_NAME} \
  -hivevar partition_value=${PARTITION_VALUE} \
  -f hive_partitioned_compaction.sql
