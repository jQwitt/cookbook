#!/usr/bin/env zsh

cd ..
cookbookPath=$(pwd)

echo Welcome to cookbook!
vared -p 'what should we call your recipie?  ' -c name

vared -p 'what flavor?  ' -c flavor;
case $flavor in
  nextjs|node|react|spring)
    # create project next to cookbook as default
    cd ..
    mkdir $name
    cd $name

    echo creating new $flavor project at $(pwd)
    cp -a $cookbookPath/$flavor/template/. .
    ;;
  *)
    echo Unrecognized flavor: $flavor - please try again
    ;;
esac
