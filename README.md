Introduction
============
This repository contains the infrastructure to run chef-tutorials, and develop cookbooks using test driven development.

Instructions
============
To run these tutorials, there are a few prerequisites: 

Download and install [Virtualbox 4.2.6](https://www.virtualbox.org/wiki/Download_Old_Builds_4_2) (if you want to align with what we're using). 

Download and install [Vagrant 1.1.5](http://downloads.vagrantup.com/tags/v1.1.5). (If you're feeling courageous, use the latest, the maintainer is pretty good about keeping things working).

```
git clone https://github.com/chef-tutorials/workstation.git
```

In the base directory of the repo, run:

___WARNING___
The following command will take a while, as it is downloading 1.2GB of baseboxes.

```
vagrant up 
```

Vagrant will download the [baseboxes](http://link-to-basebox.html) from the web, and start up the workstation and node to get started with the tutorials.

Upon success, you should see the login screen of a Ubuntu desktop box. Login with

```
Username: vagrant
Password: vagrant
```
