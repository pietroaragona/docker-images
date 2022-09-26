
IMAGE_NAME="jenkins-withdocker"
VERSION="2.361.1-lts-jdk11"
FULL_TAG=${IMAGE_NAME}:${VERSION}

docker build -t pietroaragona/${FULL_TAG} .

echo -e "\n\nTo push on docker Hub: \n\tdocker push pietroaragona/${FULL_TAG}"
#docker push pietroaragona/$${FULL_TAG}