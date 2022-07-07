docker stop candyss && docker rm $_
docker pull rollrat/candyss:latest
docker run -d -v /home/ec2-user/config-java:/config/ --env \
  JAVA_TOOL_OPTIONS="-XX:+IgnoreUnrecognizedVMOptions -Xlog:gc:gc.log -Xlog:gc* -Xlog::::filecount=5,filesize=1024 -Xlog:::time,level,tags -Xlog:safepoint" \
  --name candyss --network host rollrat/candyss:latest
docker rmi $(docker images -q rollrat/candyss)