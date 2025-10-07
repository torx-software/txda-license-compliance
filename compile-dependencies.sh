#!/usr/bin/env bash

set -e

# Requires wget and bash > 4.0

# Dependencies in the format "<name> <url>"
# If you get an error on OS X, try `brew install bash` first
declare -A DEPENDENCIES
DEPENDENCIES=(
    [chardet-4.0.0]=https://github.com/chardet/chardet/archive/refs/tags/4.0.0.zip
    [chardet-5.0.0]=https://github.com/chardet/chardet/archive/refs/tags/5.0.0.zip
    [chardet-5.2.0]=https://github.com/chardet/chardet/archive/refs/tags/5.2.0.zip
    [text-unidecode-1.3]=https://github.com/kmike/text-unidecode/archive/refs/tags/1.3.zip
    [certifi-2021.10.8]=https://github.com/certifi/python-certifi/archive/refs/tags/2021.10.08.zip
    [certifi-2022.5.18.1]=https://github.com/certifi/python-certifi/archive/refs/tags/2022.05.18.1.zip
    [certifi-2022.6.15]=https://github.com/certifi/python-certifi/archive/refs/tags/2022.06.15.zip
    [certifi-2022.9.24]=https://github.com/certifi/python-certifi/archive/refs/tags/2022.09.24.zip
    [certifi-2022.12.7]=https://github.com/certifi/python-certifi/archive/refs/tags/2022.12.07.zip
    [certifi-2023.7.22]=https://github.com/certifi/python-certifi/archive/refs/tags/2023.07.22.zip
    [certifi-2024.7.4]=https://github.com/certifi/python-certifi/archive/refs/tags/2024.07.04.zip
    [certifi-2024.8.30]=https://github.com/certifi/python-certifi/archive/refs/tags/2024.08.30.zip
    [certifi-2024.12.14]=https://github.com/certifi/python-certifi/archive/refs/tags/2024.12.14.zip
    [certifi-2025.1.31]=https://github.com/certifi/python-certifi/archive/refs/tags/2025.01.31.zip
    [certifi-2025.4.26]=https://github.com/certifi/python-certifi/archive/refs/tags/2025.04.26.zip
    [certifi-2025.6.15]=https://github.com/certifi/python-certifi/archive/refs/tags/2025.06.15.zip
    [certifi-2025.7.14]=https://github.com/certifi/python-certifi/archive/refs/tags/2025.07.14.zip
    [certifi-2025.8.3]=https://github.com/certifi/python-certifi/archive/refs/tags/2025.08.03.zip
    [certifi-2025.10.5]=https://github.com/certifi/python-certifi/archive/refs/tags/2025.10.05.zip
    [psycopg2-2.8.6]=https://github.com/psycopg/psycopg2/archive/refs/tags/2_8_6.zip
    [psycopg2-2.9.3]=https://github.com/psycopg/psycopg2/archive/refs/tags/2_9_3.zip
    [psycopg2-2.9.5]=https://github.com/psycopg/psycopg2/archive/refs/tags/2_9_5.zip
    [psycopg2-2.9.10]=https://github.com/psycopg/psycopg2/archive/refs/tags/2.9.10.zip
    [psycopg-3.1.18]=https://github.com/psycopg/psycopg/archive/refs/tags/3.1.18.zip
    [psycopg-3.2.3]=https://github.com/psycopg/psycopg/archive/refs/tags/3.2.3.zip
    [psycopg-3.2.4]=https://github.com/psycopg/psycopg/archive/refs/tags/3.2.4.zip
    [psycopg-3.2.7]=https://github.com/psycopg/psycopg/archive/refs/tags/3.2.7.zip
    [psycopg-3.2.8]=https://github.com/psycopg/psycopg/archive/refs/tags/3.2.8.zip
)

# Remove existing
rm -rf ./dependencies
mkdir dependencies

for dependency in "${!DEPENDENCIES[@]}";
do
    (cd ./dependencies && mkdir -p $dependency && cd $dependency && wget ${DEPENDENCIES[$dependency]})
done
