spark-submit \
  --class com.github.KeithSSmith.spark_compaction.Compact \
  --master yarn-cluster \
  ${JAR_PATH}/spark-compaction-0.0.1-SNAPSHOT.jar \
  --input-path ${INPUT_PATH} \
  --output-path ${OUTPUT_PATH} \
  --input-compression [none snappy gzip bz2 lzo] \
  --input-serialization [text parquet avro] \
  --output-compression [none snappy gzip bz2 lzo] \
  --output-serialization [text parquet avro]
