#!/usr/bin/env zsh

cd .. 
cookbookPath=$(pwd)

for dir in $cookbookPath/*
do
  case $dir in
  /Users/jackwitt/Desktop/cookbook/nextjs|/Users/jackwitt/Desktop/cookbook/node|/Users/jackwitt/Desktop/cookbook/react)
    # cd into project and remove heavy files
    cd $dir
    for subDir in `ls`
    do
      cd $dir/$subDir
      echo cleaning $(pwd)

      rm -f yarn.lock
      rm -f yarn-error.log
      rm -rf node_modules
    done
    ;;
  *)
    ;;
esac
done
