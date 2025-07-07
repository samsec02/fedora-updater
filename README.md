# fedora-updater
Just a simple bash script for updating your Fedora Linux system

# Using Anacron to automatically run the script once a week
1. Move script to desired loction, feel free to use example above.
``sudo mv ~/update-fedora.sh /usr/local/bin/update-fedora.sh``

2. Make script executable
``sudo chmod +x /usr/local/bin/update-fedora.sh``

4. Schedule it weekly using Anacron, script will run automatically, if system is offline it will run at a later point in time. The weekly directory runs the job every 7 days on Sundays. 
``sudo ln -s /usr/local/bin/update-fedora.sh /etc/cron.weekly/update-fedora``

5. Enable Anacron
``sudo systemctl enable --now anacron``



