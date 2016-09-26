ACCOUNT=gnschenker
IMAGE_NAME=myapi
TAG=1.0

# build artifact
docker build -t $IMAGE_NAME .

# test artifact

# tag artifact
docker tag $IMAGE_NAME $ACCOUNT/$IMAGE_NAME:$TAG
docker tag $IMAGE_NAME $ACCOUNT/$IMAGE_NAME:latest

# push artifact
docker push $ACCOUNT/$IMAGE_NAME:$TAG
docker push $ACCOUNT/$IMAGE_NAME:latest
