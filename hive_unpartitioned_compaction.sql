SET hive.exec.compress.output=true;
SET mapred.output.compression.code=org.apache.hadoop.io.compress.SnappyCodec;
SET mapred.output.compression.type=BLOCK;

INSERT OVERWRITE TABLE ${hivevar:database_name}.${hivevar:table_name}
SELECT *
  FROM ${hivevar:database_name}.${hivevar:table_name}
