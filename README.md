# University of Hyderabad Network Login Script

Shell script to automatically login on UoH network.
Cronjob runs every minutes and the script pings `8.8.8.8` to check if you are connected to internet. If not then uses `curl` for login.

## Installation

1. Put `authenticate.sh` in your a **cron** dir

    ```bash
    mkdir $HOME/cron
    vim $HOME/cron/authenticate.sh
    ```

    **NOTE:** Change the enrollment number and password to your own.

2. Add cronjob for automatic login.

    ```bash
    crontab -e
    ```

    Add the following line to the cron

    ```vim
    */1 * * * * /bin/bash -c "$HOME/cron/authenticate.sh"
    ```

    That's all folks!
