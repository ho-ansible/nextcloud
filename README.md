# Ansible role: nextcloud
PHP-based WebDAV file / calendar / contacts server

## Requirements
Only tested on Debian stable, for now.

## Role Variables
+ 

## Dependencies
+ nginx
+ php-fpm
+ PostgreSQL

## Example Playbook

```
- hosts: nextcloud
  roles:
    - { role: ho-ansible.nextcloud }
```

## License
MIT

## Author Information
Sean Ho, https://github.com/ho-ansible/
