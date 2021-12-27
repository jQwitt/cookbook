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
      echo cleaning $dir/$subDir
      cd $dir/$subDir

      rm -f yarn.lock
      rm -f yarn-error.log
      rm -rf node_modules
    done
    ;;
  *)
    ;;
esac
done
