#!/usr/bin/env zsh

cd .. 
cookbookPath=$(pwd)

for dir in $cookbookPath/*
do
  case $dir in
  /Users/jackwitt/Desktop/cookbook/nextjs|/Users/jackwitt/Desktop/cookbook/node|/Users/jackwitt/Desktop/cookbook/react)
    # cd into project and remove heavy files
    echo cleaning $dir
    cd $dir/template

    rm -f yarn.lock
    rm -f yarn-error.log
    rm -rf node_modules
    ;;
  *)
    ;;
esac
done
