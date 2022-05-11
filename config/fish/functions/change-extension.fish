# Change file extensions recursively in current directory
#
#   change-extension erb haml

function change-extension
  for f in **/*.$argv[1]
    mv -v -- "$f" (basename $f $argv[1])$argv[2]
  end
end
