docker build -t mpf-test -f ci/Dockerfile-systemd .
docker run -d --privileged -p 8443:443 -v /Users/craig/cfe/masterfiles:/data --name mpf-test mpf-test
docker exec -it mpf-test /setup.sh
docker exec -it mpf-test /test.sh
