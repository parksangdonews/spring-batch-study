FROM arm64v8/mysql:8.4.3

# MySQL 초기화 스크립트 복사
COPY ./mysql-init-files/init.sql /docker-entrypoint-initdb.d/init.sql

# MySQL 데이터 파일 복사 (기존 데이터베이스 복원용, 없을 시 생략 가능)
# COPY ./mysqldb/ /var/lib/mysql/

# MySQL 설정 파일 복사
COPY ./mysql/my.cnf /etc/mysql/conf.d/my.cnf                       