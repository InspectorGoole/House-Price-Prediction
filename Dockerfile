FROM  python:3.11 
COPY . /app 
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app


# FROM: Purpose: Specifies the base image to use for your Docker image.
# COPY: Copies files or directories from your local machine into the Docker image.
# WORKDIR: Sets the working directory inside the container. Any following commands will run in this directory.
# RUN: Runs a command in the Dockerfile. This is used to install packages, copy files. Executes commands inside the container during the build process.
# EXPOSE: Informs Docker that the container will listen on the specified network ports at runtime.
# CMD:  Defines the default command to run when a container starts. If you provide a command when running the container, it will override the CMD instruction.

