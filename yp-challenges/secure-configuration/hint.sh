#|/bin/bash -e

seconds_sofar=$1

if [[ $seconds_sofar -ge 60 && $seconds_sofar -lt 150 ]]; then
  echo "The documentation on Kubernetes Secrets is available at https://kubernetes.io/docs/concepts/configuration/secret/"
fi

if [[ $seconds_sofar -ge 30060 && $seconds_sofar -lt 450 ]]; then
  echo "The documentation on how to mount environment variables is available at https://kubernetes.io/docs/concepts/configuration/secret/"
fi 