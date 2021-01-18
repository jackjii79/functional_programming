#!/bin/bash
SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
#echo $SCRIPT_PATH
if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    os_name=mac
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    os_name=linux
else
        echo "If this is windows machine use .bat file"
        exit -1
fi
# wget https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.6%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.6_10.tar.gz
curl -L https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.6%2B10/OpenJDK11U-jdk_x64_"$os_name"_hotspot_11.0.6_10.tar.gz -o OpenJDK11U-jdk_x64_"$os_name"_hotspot_11.0.6_10.tar.gz
tar -xvf OpenJDK11U-jdk_x64_"$os_name"_hotspot_11.0.6_10.tar.gz
if [ "$os_name" == "mac" ]; then
        export JAVA_HOME="$SCRIPT_PATH/jdk-11.0.6+10/Contents/Home"
elif [ "$os_name" == "linux" ]; then
        export JAVA_HOME="$SCRIPT_PATH/jdk-11.0.6+10"
fi
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Set your java home in your terminal by running following command every time you open a new terminal:"
echo "export JAVA_HOME=${JAVA_HOME}"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
