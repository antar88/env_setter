#!/bin/sh

echo "This command will help you to set the commands and enviorments needed to
start working. You need brew, git and zsh installed. Do you want to continue? (Y/N)"

read continue
case $continue in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no."; exit;;
esac

export ZSH=~/.oh-my-zsh

echo "installing brew..."
if ! type "brew" > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "  >  brew already installed!"
fi

echo "installing zsh"
if ! type "zsh" > /dev/null; then
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "  >  zsh already installed!"
fi

touch $ZSH/env.sh
cp -f ./env.sh $ZSH/env.sh
cp -f ./.zshrc ~/.zshrc

echo "create project path"
mkdir ~/Projects
