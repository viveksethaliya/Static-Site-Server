# Website Deployment with rsync

This project demonstrates how to sync a website from a development machine to a server using **rsync** over **SSH**.

## Prerequisites

### On the Server
1. **Install and configure Nginx**  
   ```bash
   sudo apt update
   sudo apt install nginx -y

Configure your server block (virtual host) in `/etc/nginx/sites-available/` and enable it.

2. **Install rsync**

   ```bash
   sudo apt install rsync -y
   ```

### On the Development System

1. **Install and configure OpenSSH server**

   ```bash
   sudo apt update
   sudo apt install openssh-server -y
   ```

   Ensure the SSH service is running:

   ```bash
   sudo systemctl enable ssh
   sudo systemctl start ssh
   ```

## Usage

1. Clone or download this repository on your development system.
2. Update the `rsync.sh` file with your server IP, username, and desired paths.
3. Run the sync script:

   ```bash
   sh rsync.sh
   ```
4. The website files from your development system will be synced to your server’s Nginx web root.

## Notes

* The first time you connect, SSH will ask you to confirm the server fingerprint.
* You’ll be prompted for your server password unless you set up SSH keys.
* Make sure `/var/www/` (or your Nginx root directory) has proper permissions.


----------------------------------------
project for https://roadmap.sh/projects/static-site-server

