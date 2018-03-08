#https://stackoverflow.com/questions/6870221/is-there-any-mutex-semaphore-mechanism-in-shell-scripts

# Bourne
lockdir=/tmp/myscript.lock
if mkdir "$lockdir"
then    # directory did not exist, but was created successfully
    echo >&2 "successfully acquired lock: $lockdir"
    # continue script
else    # failed to create the directory, presumably because it already exists
  echo >&2 "cannot acquire lock, giving up on $lockdir"
  exit 0
fi
