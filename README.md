### An Ansible playbook that installs a full LAMP stack and it's dependencies, then installs Wordpress

This is primarily a LAMP installation (for CentOS), which installs Wordpress at the end of it.  
  
**Prerequisites:** None. This was tested on a minimal CentOS-7 installation.  
**Installation:**
- `sh start_install.sh`

**Steps:** Running this script completes these steps
- First, the script runs the playbooks within the `initial_setup` directory.
    - Creates a new user on the server
    - Changes the hostname on the target server
- Next, the script runs the playbook proper (described within `roles`)
- Then, we install the following in sequence:
    - `prerequisites`: updates all the existing pacakges, installs `policycoreutils-python` and then secures SSH access
    - `apache`: the Apache webserver (and then copy a custom httpd.conf, if required)
    - `mariadb`:
        - installs `mariadb`
        - runs `mysql_secure_installation`
        - ***TODO:** Copy a my.cnf to the remote server, if required*
    - `php`: installs PHP (the default version available with `yum`)
- And finally, Wordpress is downloaded and installed.

**Notes**  
- I've tried to avoid using `wp-cli`
- the installation goes only so far as to extract Wordpress and add a `wp-config` file.
    - As it stands, once the playbook run is complete, access the remote server's IP on the browser and the Wordpress install process can be completed.
- ***TODO:** Complete the addition of the `admin` user etc. via the Ansible playbook.*
- ***TODO:** Add relevant sections for a Debian installation.*
