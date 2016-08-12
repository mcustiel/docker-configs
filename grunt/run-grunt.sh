#!/bin/bash

DIR=$(pwd)
USER=$(id -u)
GROUP=$(id -g)

function fail() {
  echo $1 >&2
  exit 1
}

COMMAND=""
options=($@)

while [ "${#options[@]}" -gt 0 ]; do
  case "${options[0]}" in
    -d|--directory)
      DIR=$(realpath ${options[1]})
      if [ ! -d $DIR ]; then
        fail "Option ${options[0]} requires a path to a directory as an argument."
      fi
      options=(${options[@]:1})
      ;;
    -u|--user)
      USER=${options[1]}
      options=(${options[@]:1})
      ;;
    -g|--group)
      GROUP=${options[1]}
      options=(${options[@]:1})
      ;;
    *)
      COMMAND="$COMMAND ${options[0]}"
      ;;
  esac
  options=(${options[@]:1})
done

echo "RUNNING: $COMMAND for directory $DIR"
docker run -it --rm -v $DIR:/data  digitallyseamless/nodejs-bower-grunt /bin/bash -c "$COMMAND"
sudo chown -R $USER:$GROUP $DIR
