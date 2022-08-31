#!/bin/bash

VERSION=$(git describe --tags --abbrev=0)

git archive --format=tar.gz --prefix=admintools-${VERSION}/ ${VERSION}:src -o releases/admintools-${VERSION}.tar.gz