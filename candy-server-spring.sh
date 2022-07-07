docker stop candyss && docker rm $_
docker pull rollrat/candyss:latest
docker rmi $(docker images -q rollrat/candyss)
docker run -d -v /home/ec2-user/config-java:/config/ --env \
  JAVA_TOOL_OPTIONS="-Xlog:gc:gc.log -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGcDateStamps" \
  --name candyss --network host rollrat/candyss:latest