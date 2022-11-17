# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation.
export ZSH="/home/aurelio/.oh-my-zsh"

# Path export
export PATH=$PATH:$HOME/.local/bin:/usr/local/go/bin/:$HOME/go/bin
export FPATH=$FPATH:$HOME/.zsh/completions

export DOTFILE_REPOS=/home/aurelio/source/Repos/dotfiles

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
  ZSH_THEME="robbyrussell"
else
  export EDITOR="helix"
fi

# colors
export LS_COLORS='rs=0:di=1;35:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=01;36;40:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
	z
	git
	zsh-syntax-highlighting
 	zsh-autosuggestions
	colored-man-pages
	vscode
	sudo
 	npm
 	bundler
 	dotenv
 	rake
 	rbenv
 	ruby
 	zsh-alias-finder
 	zsh-exa-ls-plugin
 	command-not-found
)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Zsh autosuggest color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=81'

ZSH_ALIAS_FINDER_PREFIX="Alias tip:"

# Zsh additional sources
source $HOME/.zsh/source

# Zsh options
setopt extendedglob

# Autocorrect
setopt correct
autoload U colors && colors
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color? [Yes, No, Abort, Edit]"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


GITSTATUS_LOG_LEVEL=DEBUG

# opam configuration
test -r /home/aurelio/.opam/opam-init/init.zsh && . /home/aurelio/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh
