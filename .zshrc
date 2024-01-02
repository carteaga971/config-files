# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.config/tempus-app-manager/bin:/usr/local/bin:/usr/local/bin/ldg/:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"


# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


##################
# Personal Configs
##################

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc" 
alias python=python3
alias repos="cd ~/Repos"
alias activate="source ./venv/bin/activate"
alias vim=nvim
alias gpo="git push origin"


#######################
# TEMPUS SPECIFIC STUFF
#######################

#JIRA API token
export JIRA_TOKEN=ATATT3xFfGF0gGDPVcH8WhHKo7H31wfRy6qiX2FGMSLvhr2CG_hRcZVmLBfA0AwcoADGF8MeCubHE4lQlQ2MpyLzzcN8mCxsMwqQeyl-_eiUp61jKYInsc8q-Pi0thTnZ4rOhygRahXJdHvi-mjtPL7PnKRXA_wmBLs0aRW4duyxWAG-uoN2ZLo=12CE9E7B

# Shorcuts to Tempus folders
alias dds="cd ~/Repos/data-delivery-service && source ./venv/bin/activate"
alias dm="cd ~/Repos/n-delivery-manager && source ./venv/bin/activate"
alias deid="cd ~/Repos/expert-deidentification"
alias iac="cd ~/Repos/lens-iac"
alias art="cd ~/Repos/lens-artifact-manager-service && source ./venv/bin/activate"
export N_DM_HOME="~/Repos/n-delivery-manager"

# PR
alias reset_develop="git checkout release && git pull --ff-only && git branch -D develop && git checkout -b develop && git branch --set-upstream-to=origin/develop develop"
alias update_branch="git remote update && git merge origin/release"


# DDS swagger token for local and alp-prd environments
alias okta="make generate-fake-okta-token"
alias okta_prd="okta-personal-token get prod/sundial-production | pbcopy"
alias okta_val="okta-personal-token get prod/Tempus-VAL | pbcopy"
alias okta_bet="okta-personal-token get preview/sundial-staging | pbcopy"
alias okta_alp="okta-personal-token get preview/Tempus-ALP | pbcopy"
export AWS_PROFILE=tempusdevops
export TFENV_ARCH=amd64

# Teleport dds db
alias alp-dds-db="tsh db login --db-name=data-delivery-db --db-user=alp-rw@tempus-teleport.iam alp-data-delivery-db-bee80dbf && tsh db connect alp-data-delivery-db-bee80dbf"
alias bet-dds-db="tsh db login --db-name=data-delivery-db --db-user=bet-ro@tempus-teleport.iam bet-data-delivery-db-107a1fa8 && tsh db connect bet-data-delivery-db-107a1fa8"
alias val-dds-db="tsh db login --db-name=data-delivery-db --db-user=val-ro@tempus-teleport.iam val-data-delivery-db-185f181c && tsh db connect val-data-delivery-db-185f181c"

# GCP Auth
alias default-auth="gcloud auth application-default login"
alias auth="gcloud auth login"
alias config='/usr/bin/git --git-dir=/Users/cesar.arteaga/.cfg --work-tree=/Users/cesar.arteaga'

# AWS Configs
alias aws_cred="ctv && AWS_PROFILE=tempusdevops" 
# Run gcloud login
zsh /Users/cesar.arteaga/Scripts/check_gcp_creds.sh
