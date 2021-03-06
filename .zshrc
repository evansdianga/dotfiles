alias gs="git status"
alias vscode="code-insiders"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
source ~/Projects/antigen.zsh
# Path to your oh-my-zsh installation.
#export ZSH=/Users/evansdianga/.oh-my-zsh
antigen use oh-my-zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle you-should-use
antigen bundle zsh-autosuggestions
antigen bundle docker
antigen bundle docker-compose
antigen bundle ng
antigen bundle npm
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle lukechilds/zsh-nvm

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=~/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(you-should-use git docker docker-compose ng npm)

#source $ZSH/oh-my-zsh.sh



# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

###-begin-ng-completion###
#

# ng command completion script
#   This command supports 3 cases.
#   1. (Default case) It prints a common completion initialisation for both Bash and Zsh.
#      It is the result of either calling "ng completion" or "ng completion -a".
#   2. Produce Bash-only completion: "ng completion -b" or "ng completion --bash".
#   3. Produce Zsh-only completion: "ng completion -z" or "ng completion --zsh".
#
# Installation: ng completion -b >> ~/.bashrc
#           or  ng completion -z >> ~/.zshrc
#
_ng_completion () {
        local words cword opts
        read -Ac words
        read -cn cword
        let cword-=1

        case $words[cword] in
          ng|help) opts="--version -v b build completion doc e e2e eject g generate get help l lint new s serve server set t test v version xi18n" ;;
b|build) opts="--aot --app --base-href --deploy-url --environment --extract-css --i18n-file --i18n-format --locale --output-hashing --output-path --poll --progress --sourcemaps --stats-json --target --vendor-chunk --verbose --watch -a -aot -bh -d -e -ec -i18nFile -i18nFormat -locale -oh -op -poll -pr -sm -statsJson -t -v -vc -w" ;;
completion) opts="--all --bash --zsh -a -b -z" ;;
e|e2e) opts="--aot --app --base-href --config --deploy-url --element-explorer --environment --extract-css --hmr --host --i18n-file --i18n-format --live-reload --live-reload-client --locale --open --output-hashing --output-path --poll --port --progress --proxy-config --serve --sourcemaps --specs --ssl --ssl-cert --ssl-key --target --vendor-chunk --verbose --watch --webdriver-update -H -a -aot -bh -c -d -e -ec -ee -hmr -i18nFile -i18nFormat -liveReloadClient -locale -lr -o -oh -op -p -pc -poll -pr -s -sm -sp -ssl -sslCert -sslKey -t -v -vc -w -wu" ;;
eject) opts="--aot --app --base-href --deploy-url --environment --extract-css --force --i18n-file --i18n-format --locale --output-hashing --output-path --poll --progress --sourcemaps --target --vendor-chunk --verbose --watch -a -aot -bh -d -e -ec -force -i18nFile -i18nFormat -locale -oh -op -poll -pr -sm -t -v -vc -w" ;;
g|generate) opts="class component directive enum guard interface module pipe service--dry-run --verbose -d -v" ;;
get) opts="--global -global" ;;
l|lint) opts="--fix --force --format --type-check -fix -force -format -typeCheck" ;;
new) opts="--directory --dry-run --inline-style --inline-template --link-cli --prefix --routing --skip-commit --skip-git --skip-install --skip-tests --source-dir --style --verbose -d -dir -is -it -lc -p -routing -sc -sd -sg -si -st -style -v" ;;
s|serve|server) opts="--aot --app --base-href --deploy-url --environment --extract-css --hmr --host --i18n-file --i18n-format --live-reload --live-reload-client --locale --open --output-hashing --output-path --poll --port --progress --proxy-config --sourcemaps --ssl --ssl-cert --ssl-key --target --vendor-chunk --verbose --watch -H -a -aot -bh -d -e -ec -hmr -i18nFile -i18nFormat -liveReloadClient -locale -lr -o -oh -op -p -pc -poll -pr -sm -ssl -sslCert -sslKey -t -v -vc -w" ;;
set) opts="--global -g" ;;
t|test) opts="--app --browsers --code-coverage --colors --config --log-level --poll --port --progress --reporters --single-run --sourcemaps --watch -a -browsers -c -cc -colors -logLevel -poll -port -progress -reporters -sm -sr -w" ;;
--version|-v|v|version) opts="--verbose -verbose" ;;
xi18n) opts="--app --i18n-format --locale --out-file --output-path --progress --verbose -a -f -l -of -op -progress -verbose" ;;
*) opts="" ;;
        esac

        setopt shwordsplit
        reply=($opts)
        unset shwordsplit
      }

      compctl -K _ng_completion ng
###-end-ng-completion###

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/evansdianga/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/evansdianga/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/evansdianga/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/evansdianga/Desktop/google-cloud-sdk/completion.zsh.inc'; fi
