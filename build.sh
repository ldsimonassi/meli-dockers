#!/bin/bash

    if [ $status -ne 0 ]; then
        echo "error with $1" >&2
    fi

USER=$1
VERSION=$(cat version)

for IMAGE in */ ; do
	IMAGE=${IMAGE%/}
	cd $IMAGE
	echo "----------------------------------------"
	echo "Starting building process of: $IMAGE"
	echo "----------------------------------------"

	sudo docker build -t $USER/$IMAGE:$VERSION .
	if [ $? -ne 0 ]; then
		exit $?
	fi

	sudo docker tag $USER/$IMAGE:$VERSION $USER/$IMAGE:latest
	if [ $? -ne 0 ]; then
		exit $?
	fi

	sudo docker push $USER/$IMAGE:$VERSION
	if [ $? -ne 0 ]; then
		exit $?
	fi

	sudo docker push $USER/$IMAGE:latest
	if [ $? -ne 0 ]; then
		exit $?
	fi

	echo " "
	cd ..
done
