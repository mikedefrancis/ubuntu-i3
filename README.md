
# UBUNTU + i3 

I use this directory in order to quickly set up my linux environment on other computers. Anyone is welcome to copy this configuration including my .bashrc.

* I am using these tools with an ubuntu 16.04 virtual machine running wtihin vmware
* when booting into i3, you must type 'vmware' into a terminal and hit enter in order to resynch vmware tools with the i3 desktop (this is handled via an alias in .bashrc)
* These tools assume you are using Ubuntu 16.04
* There are some useful tools and aliases in .bashrc
* I use this directory in conjunction with cavim, my customized vim /.vimrc configuration, but keeping this configuration in a separate repo to remove clutter.

# EASY USE
 
* run ./install_bash_environ to backup and replace your .bashrc file and add other utilities. You will need to resource your .bashrc file afterwards (e.g., source ~/.bashrc)
* run ./install_zsh_environ to backup and replace your .zshrc file and add other utilities. You may need to run this script multiple times for it to install all of the things successfully. You will need to resource your .zshrc file afterwards (e.g., source ~/.zshrc)
* run ./install_i3_environ AFTER you have already started using vanilla i3. It will move the background image and the i3 config file into the appropriate places. You will have to relog to start using the new config.
* The other install scripts in here install toolchains and apps that I find useful.

## TO INSTALL i3

          sudo apt-get install i3

* there are better ways to install and configure i3, but this works on ubuntu

* logout, select i3 as the desktop, and log back in. for a tutorial on using i3, see:

* https://fedoramagazine.org/getting-started-i3-window-manager/
