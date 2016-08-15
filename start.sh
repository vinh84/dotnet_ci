#!/bin/bash
source_folder=$(pwd)
source_folder=${source_folder:0:14}
echo $source_folder
docker run -v $source_folder:/source -w /source/Build -d -t --restart=always --name dotnetvm dotnet
