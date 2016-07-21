docker run -it \
-v  /etc/hosts:/etc/hosts  \
-v  /home/pietro/repos:/home/pietro/repos \
-v  /home/pietro/.gitconfig:/home/pietro/.gitconfig \
--name myubuntu \
--rm \
pietroaragona/myubuntu
