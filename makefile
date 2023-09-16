dbst:
	docker run --name mysql -p 3306:3306 -e MYSQL_DATABASE=item -e MYSQL_ROOT_PASSWORD=root -d mysql:8.1.0

dbsp:
	docker stop mysql

dbrm:
	docker rm mysql

dbup:
	docker exec -i mysql mysql -uroot -proot item < database/itemup.sql

dbdw:
	docker exec -i mysql mysql -uroot -proot item < database/itemdown.sql