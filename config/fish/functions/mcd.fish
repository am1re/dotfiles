# Make directory and change into it.

function mcd 
  mkdir -p "$argv[1]" && cd "$argv[1]"
end
