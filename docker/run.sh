docker run -d \
  --name=calibre-web \
  -e PUID=0 \
  -e PGID=0 \
  -e TZ=Asia/Shanghai \
  -p 8083:8083 \
  -v `pwd`/config:/config \
  -v `pwd`/books:/books \
  --restart unless-stopped \
  ghcr.io/elonlee/calibre-web:latest