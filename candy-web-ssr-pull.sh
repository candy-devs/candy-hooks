docker stop candywn && docker rm $_
docker pull rollrat/candywn:latest
docker rmi $(docker images -q rollrat/candywn)
docker run -d --name candywn --network host rollrat/candywn:latest