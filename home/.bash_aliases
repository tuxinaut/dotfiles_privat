#!/bin/bash

####################################################
#			System			   #
####################################################
alias ll='ls -l';
alias hgrep='history | grep -i';
alias cpr='rsync --progress';

####################################################
#			Apt-get			   #
####################################################
alias ags='apt-cache search';
alias agpi='apt-cache show';
alias agi='sudo apt-get install';
alias agr='sudo apt-get remove';
alias agu='sudo apt-get update';
alias agg='sudo apt-get upgrade';

alias addr='sudo add-apt-repository';

####################################################
#			dpkg			   #
####################################################
alias dpkgpi='dpkg --get-selections | grep -i';

####################################################
#			gem			   #
####################################################
alias gem_clean='sudo gem install --no-rdoc --no-ri';
