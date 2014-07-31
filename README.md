Windows Management with Chef Demo
=================================
This repo provides the framework for setting up the required cookbooks to demo Windows Management with Chef.

Requirements
------------

ChefDK, A Chef Server, Windows based instance (Cloud instances are fine), 

Scenarios
---------

NOPCOMMERCE

Deploys a Nopcommerce website using the non DSC based Windows resources. Should work on Windows 2008-2012R2

Fourth Coffee

Deploys a website using the DSC based windows resources. Requires the node OS to support DSC (Windows 2012R2)

Using
-----

Clone this repo

```
$ git clone https://github.com/mfdii/demo-env
```
Upload the content to your Chef server using Berkshelf.

```
$ cd demo-env
$ berks install
$ berks upload
$ knife upload /roles
```

Now, simply apply the appropriate role to the server you wish to have the demo running on.


Roles
-----

nopcom - deploys nopcommerce and dependencies

fourthcofee - deploys fourth coffee site and dependencies

win_base - base windows setup, included by the application roles

Demo Script
-----------

