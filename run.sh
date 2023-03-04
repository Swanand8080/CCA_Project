sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo dir=$(pwd)
sudo docker run -v $dir/HTML_Container_Code:/usr/local/apache2/htdocs -p 8081:80 -d docker.io/httpd
sudo docker run -itd --name=pacman -p 8082:80 nbaillie/pacman
sudo docker network create newnet
sudo docker run -itd --name=mysql --network=newnet -e MYSQL_ROOT_PASSWORD=redhat -e MYSQL_DATABASE=wordpress mysql:5.6
sudo docker run -itd --name=wordpress -p 8083:80 -e WORDPRESS_DB_HOST=mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=redhat -e WORDPRESS_DB_NAME=wordpress --network=newnet wordpress
sudo git clone https://github.com/dockersamples/example-voting-app
sudo cd example-voting-app
sudo docker compose up -d
test=$(curl -s wgetip.com)
sudo apt install apache2 -Y
cp -rvf basehtml/* /var/www/html/
sudo systemctl restart apache2
