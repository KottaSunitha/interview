docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 905417996861.dkr.ecr.us-east-2.amazonaws.com
docker build -t test-ecr .
TIME=$( date '+%F_%H_%M_%S' )
docker tag test-ecr:latest 905417996861.dkr.ecr.us-east-2.amazonaws.com/test-ecr:$TIME
docker push 905417996861.dkr.ecr.us-east-2.amazonaws.com/test-ecr:$TIME
docker run -itd -p 8000:80 905417996861.dkr.ecr.us-east-2.amazonaws.com/test-ecr:$TIME
