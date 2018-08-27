# pgpool-docker

PGPool2 3.7.5 的 docker image

## docker-compose 測試方法:

docker-compose 僅供示範測試

```
docker-compose up -d
```

pgpool 需要三個設定檔分別是 pgpool.conf, pcp.conf, pool_hba.conf 可在執行時掛入 /etc/pgpool/ 底下，
會由 docker-entrypoint.sh 將三個檔案複製到 /etc/ 底下給 pgpool 執行檔載入