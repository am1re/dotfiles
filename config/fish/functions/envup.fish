# Load .env file into shell session for environment variables

function envup 
  if [ -f .env ]
    export $(sed '/^ *#/ d' .env)
  else
    echo 'No .env file found' 1>&2
    return 1
  end
end
