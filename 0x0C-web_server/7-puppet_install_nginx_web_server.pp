package { 'nginx':
  ensure => 'installed',
  }
  service { 'nginx':
    ensure => 'running',
  }
  file {'/etc/nginx/sites-enabled/default':
  content  => "server {
                  listen 80 default_server;
                  listen [::]:80 default_server;
                  root /var/www/html;
                  index index.html;
                  location /redirect_me {
                    return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
                  }
                }",
    notify => Service['nginx'],
  }
  file { '/var/www/html/index.html':
    content => 'Hello World!',
  }
