docker pull rollrat/candywn:latest
docker stop candyws && docker rm $_
docker run -d --name candyws --network host rollrat/candyws:latest