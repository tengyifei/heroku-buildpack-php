#!/usr/bin/env bash

ext_name="$1"
php_package="$2"

if [ ! -f ${ext_name}.tar.gz ]
then
	curl -# -L "$php_package" > ${ext_name}.tar.gz
else
	echo "using cached ${ext_name}"
fi
