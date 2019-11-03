#Run from root. Script takes a param for version number. Increment number to create new version. Run as ./push/push_image.sh 5
echo "Version to build is: $1"

#login to docker
docker login

#build
docker build -t james510/nodejs:v$1 .

#check images get latest image built
docker images
REPO="$(docker images | awk '{print $1}' | awk 'NR==2')" 
TAG="$(docker images | awk '{print $2}' | awk 'NR==2')"
IMAGEID="$(docker images | awk '{print $3}' | awk 'NR==2')" 

#tag image
docker tag $IMAGEID "$REPO:$TAG"

#push image
docker push "$REPO:$TAG"