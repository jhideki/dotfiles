#!/bin/bash
mvn archetype:generate \
  -DgroupId=com.example \
  -DartifactId=$1\
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false
