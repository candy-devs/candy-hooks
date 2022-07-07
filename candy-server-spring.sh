docker stop candyss && docker rm $_
docker rmi $(docker images -q rollrat/candyss)
docker pull rollrat/candyss:latest
docker run -d -v /home/ec2-user/config-java:/config/ --env \
  JAVA_TOOL_OPTIONS="-Xloggc:gc.log -XX:+PrintGCDetails -XX:+PrintTenuringDistribution -XX:+PrintGCTimeStamps -XX:+PrintGcDateStamps" \
  --name candyss --network host rollrat/candyss:latest