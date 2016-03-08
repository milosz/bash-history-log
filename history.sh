#!/bin/bash 
# Define slc function to store last command with additional commentary inside defined log file
# 
# Use the following construnct inside /.bashrc file to use defined function in the current shell context.
#   source /path/to/slc.sh
#
# Usage
# $ any command
# $ slc
#
# $ any command
# $ slc some comment

# log file
slc_log_file="${HOME}/commands.log"

function slc() {
  # get the last command, but ignore this function
  if [ -z "$(echo $HISTIGNORE | grep slc\\*)" ]; then     # skip last command (function execution)
    command=$(history | tail -2 | grep -v \ slc | tail -1 | sed 's/^[ 0-9:\\-]*//')
  else                                                    # HISTIGNORE does contain slc*
    command=$(history | tail -1 | sed 's/^[ 0-9:\\-]*//')
  fi

  # store date, comment, command
  if [ -n "$command" ]; then
    date=$(date +"%d-%m-%Y %H:%M")
    echo -e "* $date\t$*\n\t$command\n" >> ${slc_log_file}
  fi
}
