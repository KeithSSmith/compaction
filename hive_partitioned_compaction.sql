SET hive.exec.compress.output=true;
SET mapred.output.compression.code=org.apache.hadoop.io.compress.SnappyCodec;
SET mapred.output.compression.type=BLOCK;
SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

INSERT OVERWRITE TABLE ${hivevar:database_name}.${hivevar:table_name} PARTITION ( ${hivevar:partition_name} )
SELECT *
  FROM ${hivevar:database_name}.${hivevar:table_name}
 WHERE ${hivevar:partition_name} = ${hivevar:partition_value}
