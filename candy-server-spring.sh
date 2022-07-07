docker stop candyss && docker rm $_
docker pull rollrat/candyss:latest
docker run -d -v /home/ec2-user/config-java:/config/ --env \
  JAVA_TOOL_OPTIONS="-Xlog:gc*,safepoint:gc.log:time,level,tags,uptime:filecount=100,filesize=128K" \
  --name candyss --network host rollrat/candyss:latest
docker rmi $(docker images -q rollrat/candyss)