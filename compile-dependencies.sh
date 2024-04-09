#!/usr/bin/env bash

set -e

# Requires wget and bash > 4.0

# Dependencies in the format "<name> <url>"
# If you get an error on OS X, try `brew install bash` first
declare -A DEPENDENCIES
DEPENDENCIES=(
    [chardet-4.0.0]=https://github.com/chardet/chardet/archive/refs/tags/4.0.0.zip
    [chardet-5.0.0]=https://github.com/chardet/chardet/archive/refs/tags/5.0.0.zip
    [text-unidecode-1.3]=https://github.com/kmike/text-unidecode/archive/refs/tags/1.3.zip
    [certifi-2021.10.8]=https://github.com/certifi/python-certifi/archive/refs/tags/2021.10.08.zip
    [certifi-2022.5.18.1]=https://github.com/certifi/python-certifi/archive/refs/tags/2022.05.18.1.zip
    [certifi-2022.6.15]=https://github.com/certifi/python-certifi/archive/refs/tags/2022.06.15.zip
    [certifi-2022.9.24]=https://github.com/certifi/python-certifi/archive/refs/tags/2022.09.24.zip
    [certifi-2022.12.7]=https://github.com/certifi/python-certifi/archive/refs/tags/2022.12.07.zip
    [certifi-2023.7.22]=https://github.com/certifi/python-certifi/archive/refs/tags/2023.07.22.zip
    [psycopg2-2.8.6]=https://github.com/psycopg/psycopg2/archive/refs/tags/2_8_6.zip
    [psycopg2-2.9.3]=https://github.com/psycopg/psycopg2/archive/refs/tags/2_9_3.zip
    [psycopg2-2.9.5]=https://github.com/psycopg/psycopg2/archive/refs/tags/2_9_5.zip
    [psycopg-3.1.18]=https://github.com/psycopg/psycopg/archive/refs/tags/3.1.18.zip
)

# Remove existing
rm -rf ./dependencies
mkdir dependencies

for dependency in "${!DEPENDENCIES[@]}";
do
    (cd ./dependencies && mkdir -p $dependency && cd $dependency && wget ${DEPENDENCIES[$dependency]})
done
