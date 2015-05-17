# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

FDrm()
{
  sudo docker stop 
  sudo docker rm 
}
alias docker="sudo docker"
alias Drm="FDrm"

gp()
{
  git add .
  git commit -m \""$*"\"
  git push -u origin master
}

alias rs='rails s -b 0.0.0.0 &> /tmp/s_log'
alias re='killall ruby'

function share_history {
    history -a
    history -c
    history -r
}
alias rs='rails s -b 0.0.0.0 &>/tmp/log'
PROMPT_COMMAND='share_history'
#shopt -u histappend
export HISTSIZE=9999

export PATH=$PATH:/opt/chef/embedded/bin:/opt/chef/bin
