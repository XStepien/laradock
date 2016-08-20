# Build custom image

## From selenium-custom folder
docker build -t larryeitel/standalone-firefox-debug .

docker login -u larryeitel -p
docker push larryeitel/standalone-firefox-debug:latest
