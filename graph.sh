#!/bin/sh -ex

mvn org.kuali.maven.plugins:graph-maven-plugin:1.2.3:dependencies \
  -Dgraph.includes="com.io7m.*" \
  -Dgraph.file="io7m.svg"

mvn org.kuali.maven.plugins:graph-maven-plugin:1.2.3:dependencies \
  -Dgraph.file="all.svg"
