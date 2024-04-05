# Docker images to Github repository

How to upload Java Maven applications to Github after Dockerizing them.

The project is divided into two parts: the client side where the Java program is written, packaged, and uploaded to Github, and the server side where the container, representing our application, is launched.
<br>

## Client-side
After creating the .jar file using the terminal command: mvn package (or mvn package -Dmaven.test.skip), navigate to the folder created by Maven /target and create the Dockerfile (as shown in the example provided in my repository).

<br>
Authenticate to Github with the command: sudo docker login ghcr.io -u <username> -p <token_pwd>
Build the Docker container for our Java app with the command: sudo docker build -t ghcr.io/your_username/your_image_name:1 .
Push with the command: sudo docker push ghcr.io/your_username/your_image_name:1

Now our Docker image is located in the Github packages.
<br>


## Server-side

On the server side, to run the Docker container, you can create a docker-compose.yml file (as in the example) so that it downloads the image we had uploaded to Github and starts the container for our Java application.

## Watchtower

To automate the updating of the containers based on the latest version uploaded to Github, we can use Watchtower. It's a Docker container that will monitor the latest version of the image in our repository and automatically stop the container connected to that image, then relaunch it with the new version. https://github.com/containrrr/watchtower



