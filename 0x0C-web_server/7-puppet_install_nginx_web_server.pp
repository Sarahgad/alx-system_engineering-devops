#install nginx
package {'nginx':
ensure   => 'present',
provider => 'apt-get'
}
#html file
file {'hello world':
path    => 'root/var/www/html/index.html',
user    => 'root',
mood    => '0644',
content => 'Hello World!',
}

#config nginx
exec {'redirect':
require  => 'nginx',
command  => 'sudo sed -i "/listen 80 default_server;/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-enabled/default',
provider => 'shell',

}
#redirect me
