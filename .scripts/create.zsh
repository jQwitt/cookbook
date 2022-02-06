#!/usr/bin/env zsh

cd ..
cookbookPath=$(pwd)

echo 'Welcome to cookbook!'
vared -p 'what should we call your recipie?  ' -c name
if [ ! $name ]; then
  msg='err: cannot cook without a name'
  echo "\e[1;31m$msg\e[0m"
  exit 1
fi

vared -p 'what flavor?  ' -c flavor;
case $flavor in
  nextjs|node|react|spring)
    vared -p 'any spice?  ' -c spice;
    
    # see if spice exists, and is valid
    toCp=$cookbookPath/$flavor/${spice:="template"}
    if [ ! -d $toCp ]; then
      msg="err: invalid recipie $flavor:$spice"
      echo "\e[1;31m$msg\e[0m"
      exit 1
    fi  

    # check if can create
    if [ -d ../$name ]; then
      msg="err: file already exists"
      echo "\e[1;31m$msg\e[0m"
      exit 1
    fi

    # create project
    msg="creating new $flavor:$spice project at $(pwd)"
    echo "\e[1;32m$msg\e[0m"
    cd ..
    mkdir $name
    cd $name
    cp -a $toCp/. .

    # run supported setup scripts
    toExec=$cookbookPath/.scripts/setup/$flavor.zsh
    if [ -f $toExec ]; then
      $toExec $(pwd)
    fi
    ;;
  *)
    msg="err: unrecognized flavor: ${flavor:-' '}"
    echo "\e[1;31m$msg\e[0m"
    ;;
esac

exit 0
