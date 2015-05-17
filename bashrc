# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# bash_history
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'

# for docker
FDrm()
{
  sudo docker stop 
  sudo docker rm 
}
alias docker="sudo docker"
alias Drm="FDrm"

# rails
export PATH=$PATH:/opt/chef/embedded/bin:/opt/chef/bin
alias rs='rails s -b 0.0.0.0 &> /tmp/s_log'
alias re='killall ruby'

# git
gp()
{
  git add .
  git commit -m \""$*"\"
  git push -u origin master
}
