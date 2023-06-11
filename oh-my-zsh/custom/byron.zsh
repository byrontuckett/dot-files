
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
alias ls='exa -lh --git --icons --group-directories-first'
alias pcr='pre-commit run --show-diff-on-failure'
alias pcra='pre-commit run --all --show-diff-on-failure'
alias n.='nvim .'  # nvim current directory
alias dco="docker compose"

# Starship
eval "$(starship init zsh)"

function tggd() {
  git diff --name-only main..HEAD --diff-filter=AM | grep  '^environments/.*terragrunt.hcl\|^environments/.*module.yaml' | cut -d'/' -f2- | awk 'BEGIN{FS=OFS="/"}NF--' | sort -u
}
