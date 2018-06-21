# Ansible role: nextcloud
PHP-based WebDAV file / calendar / contacts server

## Requirements
Only tested on Debian stable, for now.

## Role Variables
```
cloud_version: 13.0.2
cloud_db_version: 13.0.2.1
cloud_server: cloud.example.com
cloud_port: 443

cloud_www_dir: /var/www/nextcloud
cloud_data_dir: /var/lib/nextcloud
cloud_cache_dir: /dev/shm/nextcloud

cloud_db: nextcloud
cloud_db_host: /var/run/postgresql
cloud_db_user: nextcloud
cloud_db_prefix: 'oc_'

cloud_pw: ''
cloud_secret: ''
cloud_id: ''
cloud_db_pw: ''

cloud_apps:
  gallery: 'https://github.com/nextcloud/gallery'

```

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
