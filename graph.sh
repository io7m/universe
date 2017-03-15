#!/bin/sh -ex

mvn org.kuali.maven.plugins:graph-maven-plugin:1.2.3:dependencies \
  -Dgraph.includes="com.io7m.*" \
  -Dgraph.file="io7m.svg"

inkscape \
  --export-png io7m.png \
  --export-background=white \
  --export-background-opacity=1.0 \
  --export-area-page \
  --without-gui \
  --export-dpi=60 \
  io7m.svg

pngcrush -rem alla -b io7m.png io7m.png.out

mv io7m.png.out io7m.png

mvn org.kuali.maven.plugins:graph-maven-plugin:1.2.3:dependencies \
  -Dgraph.file="all.svg"

inkscape \
  --export-png all.png \
  --export-background=white \
  --export-background-opacity=1.0 \
  --export-area-page \
  --without-gui \
  --export-dpi=60 \
  all.svg

