
IMAGE_NAME="jenkins-withdocker"

docker build -t pietroaragona/$IMAGE_NAME .

echo "\n\nTo push on docker Hub: \n\tdocker push pietroaragona/$IMAGE_NAME"
docker push pietroaragona/$IMAGE_NAME