<h2>Part 1</h2>
образы

![linux_network](images/12.23.58.png)
docker pull nginx 

![linux_network](images/21.47.12.png)

docker run -d nginx

![linux_network](images/22.37.22.png)

docker inspect

порт
![linux_network](images/11.36.42.png)
порт
![linux_network](images/11.36.49.png)
размер
![linux_network](images/11.54.32.png)
остановка докера

![linux_network](images/12.04.34.png)
проверка что он остановлен
![linux_network](images/12.07.45.png)

docker run -p 80:80 -p 443:443 -d nginx
![linux_network](images/nginks.png)
docker restart
![linux_network](images/12.14.59.png)

<h2>Part 2</h2>
читаем конфигурацию

![linux_network](images/12.34.35.png)

меняем через nano
![linux_network](images/14.19.34.png)

применяем
![linux_network](images/14.39.57.png)

проверяем
![linux_network](images/14.43.12.png)

экспортируем и останавливаем
![linux_network](images/14.49.21.png)

обратно импортируем
![linux_network](images/17.06.57.png)
запускаем`
![linux_network](images/17.06.43.png)
пс
![linux_network](images/ps.png)
проверка
![linux_network](images/curl.png)


<h2>Part 3</h2>
инструкция для убунту

sudo apt-get install libfcgi-dev
sudo apt-get install spawn-fcgi
sudo apt-get install nginx
sudo nginx -c %name%
or
cp nginx.conf /etc/nginx/nginx.conf

bash run sh

либо выполнить те инструкции которые указаны в докерфайле в 4 части

<h2>Part 4</h2>
docker build -t gcc12 . 

![linux_network](images/11.20.37.png)

docker run -d -p 80:81 gcc35
docker run -d -p 81:81 gcc12
![linux_network](images/11.21.25.png)
curl http://127.0.0.1:81/
![linux_network](images/11.21.49.png)

<h2>Part 5</h2>
dockle gcc36 

![linux_network](images/13.01.16.png)
после я поправил докер файл
export DOCKER_CONTENT_TRUST=1 
docker build -t 11:last .
![linux_network](images/13.55.52.png)

![linux_network](images/13.59.51.png)

<h2>Part 6</h2>

docker network create -d bridge --gateway 172.20.0.1 --subnet 172.20.0.0/24 fcgi_network
![linux_network](images/15.31.27.png)
docker-compose build
![linux_network](images/18.10.55.png)
docker-compose up
![linux_network](images/18.11.17.png)
