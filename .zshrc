# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="gianu"

# Plugins 
plugins=(
  git
  kubectl
  docker
)

# Go 
export GOPATH=$HOME/go
[[ ! -d ~/.scripts ]] && mkdir ~/.scripts
export PATH=$PATH:~/.scripts:$GOPATH/bin

# Source oh-my-zsh before the custom functions
source $ZSH/oh-my-zsh.sh

## Aliases
# Documentation container
alias docu="docker run -d -p 8000:8000 --name docu -v $HOME/work/documentation:/docs squidfunk/mkdocs-material"
alias docustart="docker start docu"
# Public IP
alias get_ip="curl ipinfo.io/ip"
# Kubernetes
alias k="kubectl"

## Custom Functions
# START ~ set/get k8s namespace
kns()
{
  if [[ -z $1 ]]; then  
    alias k="kubectl"
    K8S_NAMESPACE=''
    return
  fi

  kubectl get namespace $1 > /dev/null
  if [[ $? -eq 0 ]]; then
    K8S_NAMESPACE=$1
    alias k="kubectl -n $K8S_NAMESPACE"
  fi
}

get_k8s_namespace()
{
  echo $K8S_NAMESPACE
}
# END

# START ~ kubernetes context
kube_prompt()
{
  context=$(kubectl config current-context)
  if [[ -n $(get_k8s_namespace) ]]; then
    namespace=" - $(get_k8s_namespace)"
  else
    namespace=''
  fi
  kubectl_prompt="[$context$namespace]"
  echo $kubectl_prompt
}

if type kubectl &> /dev/null; then
  if [[ $(uname -n) == "kubernetes_controller" ]]; then 
    PROMPT='[ %{$fg_bold[magenta]%}%m%{$reset_color%} %{$fg_bold[yellow]%}$(kube_prompt)%{$reset_color%} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)%{$reset_color%}]$ '
  else
    PROMPT='[%{$fg_bold[white]%}%n%{$reset_color%}@%{$fg_bold[red]%}%m%{$reset_color%} %{$fg_bold[yellow]%}$(kube_prompt)%{$reset_color%} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)%{$reset_color%}]$ '
  fi
fi
#END

# START ~ custom history file management
NODE=$(uname -n)
[[ ! -d ~/.zsh_history.d ]] && mkdir ~/.zsh_history.d
export HISTFILE=~/.zsh_history.d/$NODE
# END
