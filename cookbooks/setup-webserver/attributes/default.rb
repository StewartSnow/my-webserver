default['firewall']['allow_ssh'] = true
default['setup-webserver']['open_ports'] = 80

default['setup-webserver']['user'] = 'web_admin'
default['setup-webserver']['group'] = 'web_admin'

default['setup-webserver']['document_root'] = '/var/www/tivo'
default['setup-webserver']['site_name'] = 'tivo'
