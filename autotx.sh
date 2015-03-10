#!/bin/bash

project_name="developers-corner"
source_lang="en"

echo [main]
echo host = https://www.transifex.com
echo
echo


for file in $(find $source_lang -name '*.md')
do

	resource_name=${file//./-}
	resource_name=${resource_name//\//-}

	file_filter=${file/en/<lang>}
	
	echo [$project_name.$resource_name]
	echo file_filter = $file_filter
	echo source_file = $file
	echo source_lang = $source_lang
	echo type = TXT
	echo

done

