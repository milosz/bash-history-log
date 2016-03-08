bash-history-log
================
Define slc function to store last command with additional commentary inside log file

Use the following construnct inside /.bashrc file to use defined function in the current shell context.

        source /path/to/slc.sh

Usage:

        $ any command
        $ slc
        $ any command
        $ slc some comment

Sample log file:

        * 08-12-2014 22:20      cmus - an interesting console music player
                apt-cache search ^cmus

        * 08-12-2014 22:33      execute mc, use vim editor
                EDITOR=vim mc

        * 08-12-2014 22:34
                ls

Source: https://blog.sleeplessbeastie.eu/2015/01/27/how-to-store-last-command-from-history/

