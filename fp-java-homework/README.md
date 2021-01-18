## fp-java-homework
This project provides a starter template for the java homework assignments for CSCI-EE88A


The project requires Java 11+, gradle-6.0 . Project is shipped with gradle wrapper . So you should just be able to use ./gradlew
inside this direcory

## Install JDK11
 - You can cd into tools directory `cd tools` 
 - run `.install-jdk.sh`
 - This should download jdk 11 on to your local machine .
 - Note: the above install command will print JAVA_HOME path that can be used in IDE tools to setup the JDK for your projects;
 - export this variable in your shell so that gradle would use this JDK from the command line:
 `export JAVA_HOME=<value_from_the_script>`


### Getting started
 Use the following commands to get started with your project

 - Compile: `./gradlew build`
 - create eclipse project files -> `./gradlew cleanEclipe eclipse`
 - create idea project files -> `./gradlew cleanIdea idea`
 - Run tests: `./gradlew test`
 - Create an archive of this project with just source code and gradle script  -> `./gradlew clean assemble srcZip`

### License
Copyright 2020, Harvard Extension School CSCIE88A

Licensed under the Apache License, Version 2.0.
