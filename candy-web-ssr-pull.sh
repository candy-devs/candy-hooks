docker stop candywn && docker rm $_
docker rmi $(docker images -q rollrat/candywn)
docker pull rollrat/candywn:latest
docker run -d --name candywn --network host rollrat/candywn:latest