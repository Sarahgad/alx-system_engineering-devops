#install nginx
package {'nginx':
  ensure   => 'present',
}
#install nginx
exec {'install':
  command  => 'sudo apt-get update -y; sudo apt-get install nginx -y',
  provider => 'shell'
}
#creat file
exec {'hello world':
  command  => 'echo -e "Hello World!" | dd status=none of=/var/www/html/index.nginx-debian.html',
  provider => 'shell'
}
#config nginx
exec {'redirect':
  require  => 'nginx',
  command  => 'sudo sed -i "/listen 80 default_server;/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-enabled/default',
  provider => 'shell',
}

#run
exec {'run':
command  => 'sudo service nginx restart',
provider => 'shell'
}
