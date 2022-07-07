docker stop candyss && docker rm $_
docker pull rollrat/candyss:latest
docker run -d -v /home/ec2-user/config-java:/config/ --env \
  JAVA_TOOL_OPTIONS="-XX:+IgnoreUnrecognizedVMOptions -Xlog:gc:gc.log -XX:+PrintGCDetails -XX:+PrintTenuringDistribution -XX:+PrintGCTimeStamps -XX:+PrintGcDateStamps" \
  --name candyss --network host rollrat/candyss:latest
docker rmi $(docker images -q rollrat/candyss)