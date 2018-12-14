#!/bin/bash
#Load data using Bigquery Jobs instead of Transfer Service, but table and schemas are already created
bq --location=US load --noreplace --source_format=CSV --field_delimiter '|' aol_tpch10000.lineitem gs://flb-fakedata/lineitem.tbl.*
# 6,34 min - 7,74 TB
bq --location=US load --noreplace --source_format=CSV --field_delimiter '|' aol_tpch10000.customer gs://flb-fakedata/customer.tbl*
# 1,39 min - 250 GB
bq --location=US load --noreplace --source_format=CSV --field_delimiter '|' aol_tpch10000.nation gs://flb-fakedata/nation.tbl*
# 1 sec - 2.47 KB
bq --location=US load --noreplace --source_format=CSV --field_delimiter '|' aol_tpch10000.orders gs://flb-fakedata/orders.tbl*
# 3,36 min - 1,67 TB
bq --location=US load --noreplace --source_format=CSV --field_delimiter '|' aol_tpch10000.part gs://flb-fakedata/part.tbl*
# 1,12 min - 252 GB
bq --location=US load --noreplace --source_format=CSV --field_delimiter '|' aol_tpch10000.partsupp gs://flb-fakedata/partsupp.tbl*
# 1,25 min - 1,16 TB
bq --location=US load --noreplace --source_format=CSV --field_delimiter '|' aol_tpch10000.region gs://flb-fakedata/region.tbl*
# 1 sec - 424 B 
bq --location=US load --noreplace --source_format=CSV --field_delimiter '|' aol_tpch10000.supplier gs://flb-fakedata/supplier.tbl*
# 38,3 sec - 14,54GB