#!/bin/bash

gitbook build

git checkout gh-pages


git clean -fx README.md

git clean -fx SUMMARY.md

git clean -fx _book

git clean -fx doc

cp -R _book/* .

git add .

git commit -m 'Update Docs'

git push origin gh-pages

git checkout main