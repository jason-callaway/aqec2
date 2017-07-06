Role Name
=========

The Ansible Quick EC2 (aqec2) role uses my favorite design patterns for spinning up EC2 instances with the Ansible ec2 modules.

Requirements
------------

Requirements can be found in ```files/Dockerfile```. Invoking playbooks from that docker image is the preferred way to use this role.

In addition to having an AWS account, one must have a domain managed by Route 53.

Role Variables
--------------

Most variables are defaulted. However, ```r53_zone``` must be specified.

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
