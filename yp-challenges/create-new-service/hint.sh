#|/bin/bash -e

seconds_sofar=$1

if [[ $seconds_sofar -ge 60 && $seconds_sofar -lt 150 ]]; then
  echo "In case you didn't notice, to make the application listen on port `8080` you need to add a command flag or a clever use of services is also allowed"
fi

if [[ $seconds_sofar -ge 30060 && $seconds_sofar -lt 450 ]]; then
  echo "You need to add a command flag for the string `Hello YP`"
fi 