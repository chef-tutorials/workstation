Introduction
============
This repository contains the infrastructure to run chef-tutorials, and develop cookbooks using test driven development.

Instructions
============
To run these tutorials, there are a few prerequisites: 

Download and install [Virtualbox 4.2.6](https://www.virtualbox.org/wiki/Download_Old_Builds_4_2) (if you want to align with what we're using). 

Download and install [Vagrant 1.1.5](http://downloads.vagrantup.com/tags/v1.1.5). (If you're feeling courageous, use the latest, the maintainer is pretty good about keeping things working).

___WARNING___
this will take a while, as it is downloading 1.2GB of baseboxes.

Type `vagrant up` in the base directory of this repo and the vagrant will download the [basebox](http://link-to-basebox.html) from the web, and start up the workstation and node to get started with the tutorial.

Upon success, you should see the login screen of a Ubuntu desktop box. Login with

Username: vagrant
Password: vagrant

