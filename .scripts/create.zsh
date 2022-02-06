#!/usr/bin/env zsh

cd ..
cookbookPath=$(pwd)

echo 'Welcome to cookbook!'
vared -p 'what should we call your recipie?  ' -c name
if [ ! $name ]; then
  msg='cannot cook without a name'
  echo "\e[1;31m$msg\e[1;31m"
  exit 1
fi

vared -p 'what flavor?  ' -c flavor;
case $flavor in
  nextjs|node|react|spring)
    vared -p 'any spice?  ' -c spice;
    
    # see if spice exists, and is valid
    toCp=$cookbookPath/$flavor/${spice:="template"}
    if [ ! -d $toCp ]; then
      msg="invalid recipie $flavor:$spice"
      echo "\e[1;31m$msg\e[1;31m"
      exit 1
    fi  

    msg="creating new $flavor:$spice project at $(pwd)"
    echo "\e[1;32m$msg\e[1;32m"
    cd ..
    mkdir $name
    cd $name
    cp -a $toCp/. .
    ;;
  *)
    msg="unrecognized flavor: ${flavor:-' '}"
    echo "\e[1;31m$msg\e[0m"
    ;;
esac

exit 0
