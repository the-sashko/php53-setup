# php53-setup
Docker image for develop with apache & php 5.3
Container have:
+ Ubuntu 12.04
+ Apache2
+ PHP 5.3
# How to use
build and run docker image `sh buils.sh`
up contaner - `docker start php53setup`
down contaner - `docker stop php53setup`
# Also
Your virual hosts on host machine must exist (or have simlinks) in /var/www. You can change this by editing `build.sh` file
You can set up virtual hosts by editing `config/host.conf` file.
