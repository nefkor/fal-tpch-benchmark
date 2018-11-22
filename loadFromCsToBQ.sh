#!/bin/bash
list=$(gsutil ls gs://aol-temp/gendata1000/*.dat)

for object in $list;
do
        echo "$table_file";
        file=${object#*0/}
        table=${file%.*}
        bq mk --transfer_config --target_dataset=aol_gendata1000 --display_name='gendata1000_'$table'1' --params='{"data_path_template":"'$object'","destination_table_name_template":"'$table'","file_format":"CSV","max_bad_records":"0","ignore_unknown_values":"true","field_delimiter":"|","skip_leading_rows":"0","allow_quoted_newlines":"false","allow_jagged_rows":"false","delete_source_files":"false"}' --data_source=google_cloud_storage
        sleep 2m
done