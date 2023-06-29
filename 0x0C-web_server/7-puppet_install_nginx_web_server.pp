package { 'nginx':
    ensure => installed,
}

service { 'nginx':
    ensure => running,
    enable => true,
    require => Package['nginx'],
}

file { '/var/www/html/index.html':
    ensure => present,
    content => 'Hello World!'
    require => Package['nginx'],
}

file { 'etc/nginx/sites-available/default':
    ensure => present,
    content => '
server { 
    listent 80 default_server;
    listen [::]:80 default_server;

    server_name_;

    location / {
        root /var/www/html;
        index index.html;
    }
    
    location /redirect_me {
        return 301 http://jamins.tech/redirect_me.html;
    }
}
',
    require => Package['nginx'],
    notify => Service['nginx'],
}

file { '/etc/nginx/sites_enabled/default':
    ensure => 'link',
    target => '/etc/nginx/sites-available/default',
    require => File['/etc/nginx/sites-available/default'],
    notify => Service['nginx'],
}
