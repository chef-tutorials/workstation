Introduction
============
This repository contains the infrastructure to run chef-tutorials, and develop cookbooks using test driven development.


Prerequisites 
============

1.  Download and install [Virtualbox 4.2.6](https://www.virtualbox.org/wiki/Download_Old_Builds_4_2) (if you want to align with what we're using). 
2.  Download and install [Vagrant 1.2.2](http://downloads.vagrantup.com/tags/v1.1.5). (If you're feeling courageous, use the latest, the maintainer is pretty good about keeping things working).

Instructions
============

1.  Run the following command in the terminal to download the git repository.
    
    ```
    git clone https://github.com/chef-tutorials/workstation.git
    ```

    NOTE: The `git clone` command will create the workstation base directory in the current directory.
    
    __Alternative__: Download the following zip file and extract it __if you don't have git installed__:
    
    ```
    https://github.com/chef-tutorials/workstation/archive/master.zip
    ```
    
2.  Change the current directory to the workstation base directory, then start up vagrant:
    
    ___WARNING___
    The following command will take a while, as it will download the baseboxes.
    
    ___NOTE___: Please __wait__ until the following commands are complete before you log in to the workstation.
    
    ```
    cd workstation
    vagrant up 
    ```
    
    Vagrant will download the baseboxes, and start up the workstation and chef_node to get started with the tutorials.
   

4.  Upon success, you should see the login screen of a Ubuntu desktop box. Login with
    
    ```
    Username: vagrant
    Password: vagrant
    ```
