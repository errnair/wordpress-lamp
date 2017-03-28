#### An Ansible playbook that installs a full LAMP stack and it's dependencies, then installs Wordpress

This is primarily a LAMP installation (for CentOS), which installs Wordpress at the end of it.  
**Prerequisistes:** None. This was tested on a minimal CentOS-7 installation.
**Installation:**
- `sh start_install.sh

**Steps:** Running this script completes these steps
- First, the script runs the playbooks within the `initial_setup` directory.
    - Creates a new user on the server
    - Changes the hostname on the target server
- Next, the script runs the playbook proper (described within `roles`)
- Then, we install the following in sequence:
    - 
- Creates Wordpress `admin` user (and sets a password of choice)

*This is still a WIP*
