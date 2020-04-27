function fail {
    printf '%s\n' "$1" >&2
    rm -rf app
    exit 1
}

mkdir /usr/app
cd /usr/app
echo "Input GitHub repository url to build image from:"
read GIT_URL
git clone $GIT_URL . || fail "Unable to clone $GIT_URL. Exiting."
test -f Dockerfile || fail "Dockerfile not found. Exiting."

echo "Insert Docker username:"
read DOCKER_USER
docker login -u $DOCKER_USER
echo "Insert Docker repo name:"
read DOCKER_REPO
echo "Insert image name (to be used as tag in this demo):"
read IMGNAME
docker build -t $DOCKER_USER/$DOCKER_REPO:$IMGNAME .
docker push $DOCKER_USER/$DOCKER_REPO:$IMGNAME && echo "Image successfully pushed to $DOCKER_USER/$DOCKER_REPO:$IMGNAME at Docker Hub!"
cd /usr
rm -rf app