#!/bin/bash

FILE=$1
countryList=()

while IFS= read -r line
do
        address=$(echo $line| cut -d" " -f 1)

        country=$(curl "https://tools.keycdn.com/geo.json?host=$address" | jq .data.geo.country_code)

        if [ "$country" != "null" ]; then
                countryList+=("$country")
        fi

done < $FILE

printf '%s\n' "${countryList[@]}" | sort | uniq -c | sort -k1,1nr -k2 | awk '{print $2; exit}'
