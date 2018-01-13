if (( $EUID != 0 )); then
  echo "Please run with sudo!"
  exit 1
fi