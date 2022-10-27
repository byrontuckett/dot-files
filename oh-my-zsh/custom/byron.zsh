
# Homebrew completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

#custom - Completions
autoload -U +X bashcompinit && bashcompinit
#source ~/.completions/azcli ## too slow

yaml2json () {
        ruby -r yaml -r json -e 'puts YAML.load($stdin.read).to_json'
}

# TGENV
export PATH="$HOME/.tgenv/bin:$PATH"
# TFENV
export PATH="$HOME/.tfenv/bin:$PATH"

alias v=vagrant
now(){  date +"%Y-%m-%dT%H:%M:%S"}

# New project quick mkdir, git init and open an editor
new-project() {
  projn=$1
  if [[ -z "$projn" ]]; then read projn"?What is the project name? "; fi
  #replace spaces with hyphens
  #
  echo "Creating project $projn"
  md $projn && cd $_ && git init;
  nvim .
}

alias ls='exa -lh --git --icons --group-directories-first'
alias pcr='pre-commit run'
alias pcra='pre-commit run --all'

# Starship
eval "$(starship init zsh)"
chuck_cow
