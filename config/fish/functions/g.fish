# No arguments: `git status`
# With arguments: acts like `git`

function g
  if test (count $argv) -gt 0
    git $argv
  else
    git status
  end
end
