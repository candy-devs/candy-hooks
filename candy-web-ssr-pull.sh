docker rmi $(docker images -q rollrat/candywn)
docker pull rollrat/candywn:latest
docker stop candywn && docker rm $_
docker run -d --name candywn --network host rollrat/candywn:latest