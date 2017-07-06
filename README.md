aqec2
=========

The Ansible Quick EC2 (aqec2) role uses my favorite design patterns for spinning up EC2 instances with the Ansible ec2 modules.

Requirements
------------

Requirements can be found in ```files/Dockerfile```. Invoking playbooks from that docker image is the preferred way to use this role.

In addition to having an AWS account, one must have a domain managed by Route 53.

Role Variables
--------------

Most variables are defaulted. However, ```r53_zone``` must be specified.

The following variables have default values, but should be overridden in your ```group_vars```.
* ```cluster_id```: Logical group name for your instances
* ```ec2_image```: The AMI ID to be used with your images. The default value is the us-east-1 RHEL AMI ID.
* ```ec2_region```: The AWS region into which your instances will be launched. The default is us-east-1.
* ```ec2_az```: The availability zone for your region. Default is a.
* ```cidr_class_b```: The class B CIDR address for your VPC. Default is 10.0.0.0/16.
* ```cidr_class_c```: The class C CIDR address for your subnet. The default is 10.0.0.0/24.
* The ```manifest``` dict describes the instances to be created. It's a dictionary with the following values expected:
  * ```name```
  * ```role```
  * ```type```
  * ```count```
  * The ```rootvol``` dict describes the root volume. It needs:
    * ```size``` in GBs
    * ```type``` default gp2

Dependencies
------------

See ```files/Dockerfile```.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: localhost
      connection: local
      become: false
      roles:
         - { role: jason-callaway.aqec2, r53_zone: 'rhtps.io' }

License
-------

Apache License v2.0

Author Information
------------------

Jason Callaway is a Principal Solutions Architect with Red Hat. His home page is at https://jasoncallaway.com.
