#!/bin/sh

CURRENT_TAG="v$1"
COMMITS="v$3"
MESSAGE=$(prinf $2 "${CURRENT_TAG}" "$COMMITS")

echo "Tag version: ${CURRENT_TAG}"
echo "Commits from last tag: ${COMMITS}"

git tag -a "${CURRENT_TAG}" -m "${MESSAGE}"
git push origin tag "${CURRENT_TAG}"
