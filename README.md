# Ansible role: nextcloud
PHP-based WebDAV file / calendar / contacts server

## Requirements
Only tested on Debian stable, for now.

## Role Variables
### Nginx config
+ `cloud_server`: external hostname (nginx virtual host) for URL
+ `cloud_listen`: nginx `listen` directives (e.g., IP and port)

### Directories
+ `cloud_www_dir` (default: /var/www/nextcloud): where to install nextcloud
+ `cloud_data_dir` (default: /var/lib/nextcloud): where to store files
+ `cloud_cache_dir` (default: /dev/shm/nextcloud): php-fpm cache

### Database
+ `cloud_db` (default: nextcloud): name of database
+ `cloud_db_host` (default: /var/run/postgresql): host or unix socket
+ `cloud_db_user` (default: nextcloud): username within DB
+ `cloud_db_prefix` (default: `oc_`): all table names start with this

### Authentication
+ `cloud_pw`:
+ `cloud_secret`:
+ `cloud_id`: uniquely identifies this instance
+ `cloud_db_pw`: database credentials

### Additional
+ `cloud_apps` (default: gallery app): dict of (name: URL) pairs
  of nextCloud apps to install

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
+ Sean Ho, https://github.com/ho-ansible/
+ Thanks to [Paragon](https://gitlab.paragon-es.de/ansible-roles/nextcloud/blob/master/tasks/install.yml)
