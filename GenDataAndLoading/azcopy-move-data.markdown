sudo azcopy /Source:/mnt/disks/disk-1/lineitem.tbl /Dest: https://manualms.blob.core.windows.net/gendata-tpch100v2 -dest-key falabella123 /S

# Upload from local file system
azcopy /Source:<your_local_directory> /Dest: https://<your_account_name>.blob.core.windows.net/<your_container_name> /DestKey:<your_account_key> /S


azcopy \
    --source '/mnt/disks/disk-1/lineitem.tbl' \
    --destination 'https://manualms.blob.core.windows.net/gendata-tpch100v2/lineitem.tbl' \
    --dest-key 'OYESk8Zqt29r/XXYVjxmE6JfxiOl3FBH4s0ZlLH/hRtlVdc6q1R+pCzeCwhDPq2RCsAO0o0Q1qGogSo0C4bSFA=='

 nohup   azcopy \
    --source '/mnt/disks/disk-1/partsupp.tbl' \
    --destination 'https://manualms.blob.core.windows.net/gendata-tpch100v2/partsupp.tbl' \
    --dest-key 'OYESk8Zqt29r/XXYVjxmE6JfxiOl3FBH4s0ZlLH/hRtlVdc6q1R+pCzeCwhDPq2RCsAO0o0Q1qGogSo0C4bSFA==' &

    azcopy \
    --source '/mnt/disks/disk-1/orders.tbl' \
    --destination 'https://manualms.blob.core.windows.net/gendata-tpch100v2/orders.tbl' \
    --dest-key 'OYESk8Zqt29r/XXYVjxmE6JfxiOl3FBH4s0ZlLH/hRtlVdc6q1R+pCzeCwhDPq2RCsAO0o0Q1qGogSo0C4bSFA=='