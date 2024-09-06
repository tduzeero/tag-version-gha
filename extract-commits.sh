#!/bin/sh

VERSION_FROM=$1
CURRENT_VERSION=$2

COMMITS_FROM_CURRENT_TAG=$(git log $CURRENT_VERSION..HEAD --format="%h %s - %ae" --reverse)

echo "${COMMITS_FROM_CURRENT_TAG}"