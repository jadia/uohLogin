# University of Hyderabad Network Login Script

Shell script to automatically login on UoH network.
Cronjob runs every minute and the script pings `8.8.8.8` to check if you are connected to internet and are on university network. If not then uses `curl` for login.

## Installation

1. Put `authenticate.sh` in a **cron** dir

    ```bash
    mkdir $HOME/cron && \
    cp authenticate.sh $HOME/cron/ && \
    vim $HOME/cron/authenticate.sh
    ```

    **NOTE:** Change the enrollment number and password to your own.

2. Install `curl` on Ubuntu/Debian (use `yum` on CentOs/RedHat or `dnf` on Fedora)

    ```bash
    sudo apt install -y curl
    ```

3. Add cronjob for automatic login.

    ```bash
    crontab -e
    ```

    Add the following line to the cron

    ```vim
    */1 * * * * /bin/bash -c "$HOME/cron/authenticate.sh"
    ```

    That's all folks!
