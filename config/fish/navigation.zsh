unsetopt auto_cd # with cdpath enabled, auto_cd gives too many false positives
cdpath=(
  $HOME/Documents/code \
  $HOME/Documents/code/work \
  # $HOME
)

itree() {
  if [ -f .gitignore ]; then
    tree -I "$(cat .gitignore | paste -s -d'|' -)" -C | less -R
  else
    tree -I node_modules -C
  fi
}

function cdup() {
  cd "$(git rev-parse --show-toplevel)"
}
